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
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: accountSub == null
          ? FloatingActionButton(
              child: const Icon(Icons.play_arrow),
              onPressed: () async {
                final subscription = await widget.aewalletClient
                    .subscribeAccount(dropdownValue!);

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
                await widget.aewalletClient.unsubscribeAccount(accountSub!.id);
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
              FutureBuilder(
                future: widget.aewalletClient.getAccounts(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return Center(
                    child: snapshot.data!.when(
                      success: (success) {
                        return DropdownButton<String>(
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          value: dropdownValue,
                          items: success.accounts.map<DropdownMenuItem<String>>(
                              (AppAccount? value) {
                            return DropdownMenuItem<String>(
                              value: value!.name,
                              child: Text(value.name),
                            );
                          }).toList(),
                        );
                      },
                      failure: (failure) => Text('Request failed : $failure'),
                    ),
                  );
                },
              ),
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
}
