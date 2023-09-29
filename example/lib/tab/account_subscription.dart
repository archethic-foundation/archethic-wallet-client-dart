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
  void dispose() {
    accountSub = null;
    accountStreamSub?.cancel();
    accountStreamSub = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FutureBuilder(
            future: widget.aewalletClient.getAccounts(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              return snapshot.data!.when(
                success: (success) {
                  return SizedBox(
                    width: 300,
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          isExpanded: true,
                          value: dropdownValue,
                          items: success.accounts.map<DropdownMenuItem<String>>(
                              (AppAccount? value) {
                            return DropdownMenuItem<String>(
                              value: value!.serviceName,
                              child: Text(
                                '${Uri.decodeFull(value.serviceName)} (${value.shortName})',
                                style: textTheme.labelLarge,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    ),
                  );
                },
                failure: (failure) => Text(
                  'Request failed : $failure',
                  style: textTheme.labelLarge,
                ),
              );
            },
          ),
          const SmallSpace(),
          if (accountSub == null)
            SelectableText(
              'Not listening',
              style: textTheme.labelLarge,
            )
          else
            SelectableText(
              'Listening subscription ${accountSub?.id}',
              style: textTheme.labelLarge,
            ),
          const SmallSpace(),
          if (accountSub == null)
            OutlinedButton(
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
          else
            OutlinedButton(
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
        ],
      ),
    );
  }
}
