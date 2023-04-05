import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/header.dart';
import 'package:flutter_dapp_example/navigation_drawer_section.dart';
import 'package:flutter_dapp_example/tab/account_subscription.dart';
import 'package:flutter_dapp_example/tab/add_service.dart';
import 'package:flutter_dapp_example/tab/current_account_subscription.dart';
import 'package:flutter_dapp_example/tab/get_accounts.dart';
import 'package:flutter_dapp_example/tab/get_current_account.dart';
import 'package:flutter_dapp_example/tab/get_endpoint.dart';
import 'package:flutter_dapp_example/tab/get_services_from_keychain.dart';
import 'package:flutter_dapp_example/tab/keychain_derive_address.dart';
import 'package:flutter_dapp_example/tab/keychain_derive_keypair.dart';
import 'package:flutter_dapp_example/tab/sign_transactions.dart';
import 'package:flutter_dapp_example/tab/transaction_send.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
    required this.aewalletClient,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int navDrawerIndex = 0;
  void _onDestinationSelected(int selectedIndex) {
    setState(() {
      navDrawerIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Header(aewalletClient: widget.aewalletClient),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      child: NavigationDrawerSection(
                        onDestinationSelected: _onDestinationSelected,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Card(
                      elevation: 0,
                      clipBehavior: Clip.antiAlias,
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      child: getDetail(navDrawerIndex),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getDetail(int index) {
    switch (index) {
      case 0:
        return GetEndpointTab(
          aewalletClient: widget.aewalletClient,
        );
      case 1:
        return GetCurrentAccountTab(
          aewalletClient: widget.aewalletClient,
        );
      case 2:
        return GetAccountsTab(
          aewalletClient: widget.aewalletClient,
        );
      case 3:
        return GetServicesFromKeychainTab(
          aewalletClient: widget.aewalletClient,
        );
      case 4:
        return KeychainDeriveKeypairTab(
          aewalletClient: widget.aewalletClient,
        );

      case 5:
        return KeychainDeriveAddressTab(
          aewalletClient: widget.aewalletClient,
        );
      case 6:
        return AccountSubscriptionTab(aewalletClient: widget.aewalletClient);
      case 7:
        return CurrentAccountSubscriptionTab(
          aewalletClient: widget.aewalletClient,
        );
      case 8:
        return TransactionSendTab(aewalletClient: widget.aewalletClient);
      case 9:
        return SignTransactionsTab(aewalletClient: widget.aewalletClient);
      case 10:
        return AddServiceTab(aewalletClient: widget.aewalletClient);
      default:
        return const SizedBox();
    }
  }
}
