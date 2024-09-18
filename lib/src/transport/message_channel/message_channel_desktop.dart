import 'package:archethic_wallet_client/src/transport/archethic_wallet_client.dart';
import 'package:stream_channel/stream_channel.dart';

class MessageChannelArchethicDappClient extends AWCJsonRPCClient
    implements ArchethicDAppClient {
  MessageChannelArchethicDappClient({
    required super.origin,
  }) : super(
          channelBuilder: () async {
            throw UnimplementedError(
              'Message channels are not supported on the desktop platform.',
            );
          },
          disposeChannel: (StreamChannel<String> channel) async {
            // Since channel creation fails, this method should not be called, but we implement
            // logic just in case.
            await channel.sink.close();
            await channel.stream.drain();
          },
        );

  static bool get isAvailable => false;
}
