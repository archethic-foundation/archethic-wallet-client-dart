import 'dart:async';
import 'dart:js_interop';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/transport/message_channel/message_channel.js.dart';
import 'package:flutter/foundation.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web/web.dart';

class MessageChannelArchethicDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  MessageChannelArchethicDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            if (awcAvailable != true) throw Failure.connectivity;

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
    port.onmessage = (message) {
      _in.add(message.data! as String);
    }.toJS;

    _onPostMessageSubscription = _out.stream.listen((event) {
      port.postMessage(event as JSAny?);
    });
  }

  final MessagePort port;
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
