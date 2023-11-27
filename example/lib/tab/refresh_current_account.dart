import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

class RefreshCurrentAccountTab extends StatelessWidget {
  const RefreshCurrentAccountTab({
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
      future: aewalletClient.refreshCurrentAccount(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) => SelectableText(
              'Refresh done',
              style: textTheme.labelLarge,
            ),
            failure: (failure) => SelectableText(
              'Request failed : $failure',
              style: textTheme.labelLarge,
            ),
          ),
        );
      },
    );
  }
}
