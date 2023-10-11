import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/aewalletclient_mixin.dart';
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
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with AEWalletClientInstance {
  int navDrawerIndex = 0;
  void _onDestinationSelected(int selectedIndex) {
    setState(() {
      navDrawerIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        child: NavigationDrawerSection(
          onDestinationSelected: _onDestinationSelected,
        ),
      ),
      appBar: AppBar(title: Header(aewalletClient: aewalletClient)),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: Card(
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          color: Theme.of(context).colorScheme.onInverseSurface,
          child: getDetail(navDrawerIndex),
        ),
      ),
    );
  }

  Widget getDetail(int index) {
    switch (index) {
      case 0:
        return const GetEndpointTab();
      case 1:
        return const GetCurrentAccountTab();
      case 2:
        return const GetAccountsTab();
      case 3:
        return const GetServicesFromKeychainTab();
      case 4:
        return const KeychainDeriveKeypairTab();

      case 5:
        return const KeychainDeriveAddressTab();
      case 6:
        return const AccountSubscriptionTab();
      case 7:
        return const CurrentAccountSubscriptionTab();
      case 8:
        return const TransactionSendTab();
      case 9:
        return const SignTransactionsTab();
      case 10:
        return const AddServiceTab();
      default:
        return const SizedBox();
    }
  }
}
