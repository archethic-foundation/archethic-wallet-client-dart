import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/aewalletclient_mixin.dart';

class GetEndpointTab extends StatelessWidget with AEWalletClientInstance {
  const GetEndpointTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return FutureBuilder(
      future: aewalletClient.getEndpoint(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) => SelectableText(
              'Endpoint Url : ${success.endpointUrl}',
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
