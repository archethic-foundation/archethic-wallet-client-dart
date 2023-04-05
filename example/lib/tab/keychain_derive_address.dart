import 'dart:convert';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class KeychainDeriveAddressTab extends StatefulWidget {
  const KeychainDeriveAddressTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<KeychainDeriveAddressTab> createState() =>
      _KeychainDeriveAddressTabState();
}

class _KeychainDeriveAddressTabState extends State<KeychainDeriveAddressTab> {
  final payloadServiceNameController = TextEditingController(
    text: '',
  );

  final payloadIndexController = TextEditingController(
    text: '0',
  );
  final payloadSuffixController = TextEditingController(
    text: '',
  );

  @override
  void dispose() {
    payloadServiceNameController.dispose();
    payloadIndexController.dispose();
    payloadSuffixController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Service's name :",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.labelLarge,
            controller: payloadServiceNameController,
            maxLines: null,
          ),
          const SmallSpace(),
          Text(
            'Index :',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.labelLarge,
            controller: payloadIndexController,
            maxLines: null,
          ),
          const SmallSpace(),
          Text(
            'Suffix :',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.labelLarge,
            controller: payloadSuffixController,
            maxLines: null,
          ),
          const SmallSpace(),
          OutlinedButton(
            child: const Icon(Icons.send),
            onPressed: () async {
              final response =
                  await widget.aewalletClient.keychainDeriveAddress({
                'serviceName': payloadServiceNameController.text,
                'index': int.tryParse(payloadIndexController.text),
                'pathSuffix': payloadSuffixController.text
              });
              response.when(
                failure: (failure) {
                  log(
                    'Command failed',
                    error: failure,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    ResultSnackbar.error(failure.message ?? 'An error occured'),
                  );
                },
                success: (result) {
                  log(
                    'Command succeed : ${json.encode(result)}',
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    ResultSnackbar.success(json.encode(result)),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
