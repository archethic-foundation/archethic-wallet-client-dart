import 'dart:async';
import 'dart:js_interop';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/transport/common/awc_json_rpc_client.dart';
import 'package:archethic_wallet_client/src/transport/webbrowser_extension/webbrowser_extension.js.dart';
import 'package:logging/logging.dart';
import 'package:stream_channel/stream_channel.dart';

class WebBrowserExtensionDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  WebBrowserExtensionDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            if (archethic?.streamChannel == null) {
              throw Failure.connectivity;
            }
            final streamChannel = WebBrowserExtensionStreamChannel(
              streamChannel: archethic!.streamChannel!,
            );

            await streamChannel.connect();
            return streamChannel;
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
    streamChannel.onReceive = (message) async {
      _logger.info('[WBE] command received $message');
      _in.add(message.toString());
      _logger.info('[WBE] command received Done');
    }.toJS;

    _onPostMessageSubscription = _out.stream.listen((event) async {
      _logger.info('[WBE] send command $event');
      await streamChannel.send(event as JSString).toDart;
      _logger.info('[WBE] send command Done');
    });

    streamChannel.onClose = (reason) async {
      await _onPostMessageSubscription.cancel();
      await _in.close();
      await _out.close();
    }.toJS;
  }

  static final _logger = Logger('AWC-StreamChannel-WebBrowserExtention');

  Future<void> connect() async => streamChannel.connect().toDart;

  final AWCStreamChannelJS streamChannel;
  final _in = StreamController<String>(sync: true);
  final _out = StreamController<String>(sync: true);

  late final StreamSubscription<String> _onPostMessageSubscription;

  Future<void> dispose() async {
    await streamChannel.close().toDart;
  }

  @override
  StreamSink<String> get sink => _out.sink;

  @override
  Stream<String> get stream => _in.stream;
}
