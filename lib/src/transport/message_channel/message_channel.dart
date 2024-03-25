import 'dart:async';
import 'dart:html';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/transport/common/awc_json_rpc_client.dart';
import 'package:archethic_wallet_client/src/transport/message_channel/awc_web.dart';
import 'package:flutter/foundation.dart';
import 'package:stream_channel/stream_channel.dart';

class MessageChannelArchethicDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  MessageChannelArchethicDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            if (awcAvailable != true) throw Failure.connectivity();

            return MessagePortStreamChannel(
              port: await asyncAWC,
            );
          },
          disposeChannel: (StreamChannel<String> channel) async {
            await (channel as MessagePortStreamChannel).dispose();
          },
        );

  static bool get isAvailable => kIsWeb && awcAvailable == true;
}

class MessagePortStreamChannel
    with StreamChannelMixin<String>
    implements StreamChannel<String> {
  MessagePortStreamChannel({required this.port}) {
    _onReceiveMessageSubscription = port.onMessage.listen((message) {
      _in.add(message.data);
    });

    _onPostMessageSubscription = _out.stream.listen((event) {
      port.postMessage(event);
    });
  }

  final MessagePort port;
  final _in = StreamController<String>(sync: true);
  final _out = StreamController<String>(sync: true);

  late final StreamSubscription<MessageEvent> _onReceiveMessageSubscription;
  late final StreamSubscription<String> _onPostMessageSubscription;

  Future<void> dispose() async {
    await _onReceiveMessageSubscription.cancel();
    await _onPostMessageSubscription.cancel();
    await _in.close();
    await _out.close();
  }

  @override
  StreamSink<String> get sink => _out.sink;

  @override
  Stream<String> get stream => _in.stream;
}
