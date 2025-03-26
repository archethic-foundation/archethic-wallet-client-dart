part of '../archethic_wallet_client.dart';

class WebsocketArchethicDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  WebsocketArchethicDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            final socket = await _channelBuildAndConnect();
            return socket.cast<String>();
          },
          disposeChannel: (channel) {},
        );

  static Future<WebSocketChannel> _channelBuildAndConnect() async {
    final socket = WebSocketChannel.connect(
      Uri.parse('ws://127.0.0.1:12345'),
    );
    await socket.ready;
    return socket;
  }

  static Future<bool> get isAvailable async {
    try {
      final channel = await _channelBuildAndConnect();
      await channel.sink.close();
      return true;
    } catch (e) {
      return false;
    }
  }
}
