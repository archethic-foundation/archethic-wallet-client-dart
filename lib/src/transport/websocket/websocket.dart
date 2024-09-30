/// SPDX-License-Identifier: AGPL-3.0-or-later
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
      await _channelBuildAndConnect().timeout(
        const Duration(milliseconds: 500),
        onTimeout: () => throw TimeoutException(
          'Unable to ping Archethic wallet websocket',
        ),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
