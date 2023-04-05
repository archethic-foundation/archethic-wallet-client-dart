import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

class GetAccountsTab extends StatelessWidget {
  const GetAccountsTab({
    required this.aewalletClient,
    super.key,
  });

  final ArchethicDAppClient aewalletClient;

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
                      '${success.accounts[index].name}: ${success.accounts[index].genesisAddress}',
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
