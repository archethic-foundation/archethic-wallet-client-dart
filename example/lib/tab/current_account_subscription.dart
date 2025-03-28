import 'dart:async';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class CurrentAccountSubscriptionTab extends StatefulWidget {
  const CurrentAccountSubscriptionTab({
    required this.aewalletClient,
    super.key,
  });
  final ArchethicDAppClient aewalletClient;

  @override
  State<CurrentAccountSubscriptionTab> createState() =>
      _CurrentAccountSubscriptionTabState();
}

class _CurrentAccountSubscriptionTabState
    extends State<CurrentAccountSubscriptionTab> {
  Subscription<Account>? accountSub;
  StreamSubscription<Account>? accountStreamSub;

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
                final subscription =
                    await widget.aewalletClient.subscribeCurrentAccount();

                subscription.when(
                  success: (success) {
                    setState(() {
                      accountSub = success;
                      accountStreamSub = success.updates.listen((event) {
                        if (!context.mounted) return;
                        ScaffoldMessenger.of(context).showSnackBar(
                          ResultSnackbar.update(
                            'name: ${event.name}, genesisAddress: ${event.genesisAddress}',
                          ),
                        );
                      });
                    });
                  },
                  failure: (failure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      ResultSnackbar.error(
                        failure.message,
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
                await widget.aewalletClient
                    .unsubscribeCurrentAccount(accountSub!.id);
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
