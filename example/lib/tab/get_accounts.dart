import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/aewalletclient_mixin.dart';

class GetAccountsTab extends StatelessWidget with AEWalletClientInstance {
  const GetAccountsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return FutureBuilder(
      future: aewalletClient.getAccounts(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) {
              return ListView.builder(
                itemCount: success.accounts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: SelectableText(
                      '${Uri.decodeFull(success.accounts[index].serviceName)} (${success.accounts[index].shortName}): ${success.accounts[index].genesisAddress}',
                      style: textTheme.labelLarge,
                    ),
                  );
                },
              );
            },
            failure: (failure) => Text('Request failed : $failure'),
          ),
        );
      },
    );
  }
}
