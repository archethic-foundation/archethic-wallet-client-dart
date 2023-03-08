import 'dart:async';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class AccountSubscriptionTab extends StatefulWidget {
  const AccountSubscriptionTab({
    required this.aewalletClient,
    super.key,
  });
  final ArchethicDAppClient aewalletClient;

  @override
  State<AccountSubscriptionTab> createState() => _AccountSubscriptionTabState();
}

class _AccountSubscriptionTabState extends State<AccountSubscriptionTab> {
  Subscription<Account>? accountSub;
  StreamSubscription<Account>? accountStreamSub;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: accountSub == null
            ? FloatingActionButton(
                child: const Icon(Icons.play_arrow),
                onPressed: () async {
                  final subscription =
                      await widget.aewalletClient.subscribeAccount('BOB');

                  subscription.when(
                    success: (success) {
                      setState(() {
                        accountSub = success;
                        accountStreamSub = success.updates.listen((event) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            ResultSnackbar.update(
                              'balance: ${event.balance}, lastAddress: ${event.lastAddress}',
                            ),
                          );
                        });
                      });
                    },
                    failure: (failure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        ResultSnackbar.error(
                          failure.message ?? 'Subscription failed',
                        ),
                      );
                    },
                  );
                },
              )
            : FloatingActionButton(
                child: const Icon(Icons.stop),
                onPressed: () async {
                  await widget.aewalletClient
                      .unsubscribeAccount(accountSub!.id);
                  setState(() {
                    accountStreamSub?.cancel();
                    accountStreamSub = null;
                    accountSub = null;
                  });
                },
              ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SmallSpace(),
                if (accountSub == null)
                  Text(
                    'Not listening',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                else
                  Text(
                    'Listening subscription ${accountSub?.id}',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                const SmallSpace(),
              ],
            ),
          ),
        ),
      );
}
