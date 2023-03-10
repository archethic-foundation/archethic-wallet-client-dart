import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/tab/account_subscription.dart';
import 'package:flutter_dapp_example/tab/add_service.dart';
import 'package:flutter_dapp_example/tab/get_accounts.dart';
import 'package:flutter_dapp_example/tab/get_endpoint.dart';
import 'package:flutter_dapp_example/tab/get_services_from_keychain.dart';
import 'package:flutter_dapp_example/tab/keychain_derive_address.dart';
import 'package:flutter_dapp_example/tab/keychain_derive_keypair.dart';
import 'package:flutter_dapp_example/tab/transaction_send.dart';
import 'package:flutter_dapp_example/widgets/connection_button.dart';

void main() {
  runApp(const MyApp());
}

final _aewalletClient = ArchethicDAppClient.auto(
  origin: const RequestOrigin(
    name: 'FlutterDappExample',
  ),
  replyBaseUrl: 'flutterdappexample://dapp.example',
)..connect();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Archethic Wallet Client Demo',
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'GetEndpoint'),
                Tab(text: 'SendTransaction'),
                Tab(text: 'GetAccounts'),
                Tab(text: 'AccountSub'),
                Tab(text: 'AddService'),
                Tab(text: 'GetServicesFromKeychain'),
                Tab(text: 'KeychainDeriveKeypair'),
                Tab(text: 'KeychainDeriveAddress'),
              ],
            ),
            actions: [
              ConnectionButton(aewalletClient: _aewalletClient),
            ],
          ),
          body: TabBarView(
            children: [
              GetEndpointTab(aewalletClient: _aewalletClient),
              TransactionSendTab(aewalletClient: _aewalletClient),
              GetAccountsTab(aewalletClient: _aewalletClient),
              AccountSubscriptionTab(aewalletClient: _aewalletClient),
              AddServiceTab(aewalletClient: _aewalletClient),
              GetServicesFromKeychainTab(aewalletClient: _aewalletClient),
              KeychainDeriveKeypairTab(aewalletClient: _aewalletClient),
              KeychainDeriveAddressTab(aewalletClient: _aewalletClient),
            ],
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        if ((_aewalletClient as DeeplinkArchethicDappClient)
            .handleRoute(settings.name)) return;
        return null;
      },
    );
  }
}
