/// SPDX-License-Identifier: AGPL-3.0-or-later
part of '../archethic_wallet_client.dart';

class WebsocketArchethicDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  WebsocketArchethicDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            final socket = WebSocketChannel.connect(
              Uri.parse('ws://127.0.0.1:12345'),
            );

            await socket.ready;
            return socket.cast<String>();
          },
          disposeChannel: (channel) {},
        );

  static bool get isAvailable =>
      kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows;
}
