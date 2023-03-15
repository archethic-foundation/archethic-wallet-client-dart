import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

class GetEndpointTab extends StatelessWidget {
  const GetEndpointTab({
    required this.aewalletClient,
    super.key,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: aewalletClient.getEndpoint(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) =>
                SelectableText('Endpoint Url : ${success.endpointUrl}'),
            failure: (failure) => SelectableText('Request failed : $failure'),
          ),
        );
      },
    );
  }
}
