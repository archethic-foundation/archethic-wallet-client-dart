import 'dart:async';
import 'dart:js_interop';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:archethic_wallet_client/src/transport/common/awc_json_rpc_client.dart';
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

class MessagePortStreamChannel {
  MessagePortStreamChannel({required this.port}) {
    _onReceiveMessageSubscription = port.onMessage.listen((message) {
      _in.add(message.data! as String);
    });

    _onPostMessageSubscription = _out.stream.listen(port.postMessage);
  }

  final MessagePort port;
  final _in = StreamController<String>(sync: true);
  final _out = StreamController<JSAny?>(sync: true);

  late final StreamSubscription<MessageEvent> _onReceiveMessageSubscription;
  late final StreamSubscription<JSAny?> _onPostMessageSubscription;

  Future<void> dispose() async {
    await _onReceiveMessageSubscription.cancel();
    await _onPostMessageSubscription.cancel();
    await _in.close();
    await _out.close();
  }
}

extension on MessagePort {
  Stream<MessageEvent> get onMessage =>
      EventStreamProviders.messageEvent.forTarget(this);
}
