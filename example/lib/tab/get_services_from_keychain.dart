import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

class GetServicesFromKeychainTab extends StatelessWidget {
  const GetServicesFromKeychainTab({
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
      future: aewalletClient.getServicesFromKeychain(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) {
              return ListView.builder(
                itemCount: success.services.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: SelectableText(
                      '${success.services[index].derivationPath}: ${success.services[index].curve} / ${success.services[index].hashAlgo} ',
                      style: textTheme.labelLarge,
                    ),
                  );
                },
              );
            },
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
