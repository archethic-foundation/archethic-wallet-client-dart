import 'package:archethic_wallet_client/archethic_wallet_client.dart';

final _aewalletClient = ArchethicDAppClient.auto(
  replyBaseUrl: 'flutterdappexample://dapp.example',
);

mixin AEWalletClientInstance {
  ArchethicDAppClient get aewalletClient => _aewalletClient;
}
