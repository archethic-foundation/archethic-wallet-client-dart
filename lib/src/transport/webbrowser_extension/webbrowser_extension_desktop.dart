import 'package:archethic_wallet_client/archethic_wallet_client.dart';

class WebBrowserExtensionDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  WebBrowserExtensionDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            throw UnimplementedError(
              'WebBrowser extension not supported on the desktop platform.',
            );
          },
          disposeChannel: (channel) async {
            throw UnimplementedError(
              'WebBrowser extension not supported on the desktop platform.',
            );
          },
        );

  static bool get isAvailable => false;
}
