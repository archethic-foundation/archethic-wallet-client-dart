import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

class GetCurrentAccountTab extends StatelessWidget {
  const GetCurrentAccountTab({
    required this.aewalletClient,
    super.key,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: aewalletClient.getCurrentAccount(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) {
              return SelectableText(
                '${success.name}: ${success.genesisAddress}',
              );
            },
            failure: (failure) => SelectableText('Request failed : $failure'),
          ),
        );
      },
    );
  }
}
