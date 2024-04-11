import 'dart:async';
import 'dart:js';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/transport/common/awc_json_rpc_client.dart';
import 'package:archethic_wallet_client/src/transport/webbrowser_extension/webbrowser_extension.js.dart';
import 'package:stream_channel/stream_channel.dart';

class WebBrowserExtensionDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  WebBrowserExtensionDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            if (archethic?.streamChannel == null) {
              throw Failure.connectivity();
            }
            return WebBrowserExtensionStreamChannel(
              streamChannel: archethic!.streamChannel!,
            );
          },
          disposeChannel: (channel) async {
            await (channel as WebBrowserExtensionStreamChannel).dispose();
          },
        );

  static bool get isAvailable => archethic?.streamChannel != null;
}

class WebBrowserExtensionStreamChannel
    with StreamChannelMixin<String>
    implements StreamChannel<String> {
  WebBrowserExtensionStreamChannel({required this.streamChannel}) {
    streamChannel.onReceive = allowInterop((message) async {
      print('[WBE] command received $message');
      _in.add(message);
      print('[WBE] command received Done');
    });

    _onPostMessageSubscription = _out.stream.listen((event) {
      print('[WBE] send command $event');
      streamChannel.send(event);
      print('[WBE] send command Done');
    });

    streamChannel.onClose = allowInterop((reason) async {
      await dispose();
    });

    streamChannel.connect();
  }

  final AWCStreamChannelJS streamChannel;
  final _in = StreamController<String>(sync: true);
  final _out = StreamController<String>(sync: true);

  late final StreamSubscription<String> _onPostMessageSubscription;

  Future<void> dispose() async {
    await _onPostMessageSubscription.cancel();
    await _in.close();
    await _out.close();
  }

  @override
  StreamSink<String> get sink => _out.sink;

  @override
  Stream<String> get stream => _in.stream;
}
