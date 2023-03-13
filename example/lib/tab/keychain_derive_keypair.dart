import 'dart:convert';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class KeychainDeriveKeypairTab extends StatefulWidget {
  const KeychainDeriveKeypairTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<KeychainDeriveKeypairTab> createState() =>
      _KeychainDeriveKeypairTabState();
}

class _KeychainDeriveKeypairTabState extends State<KeychainDeriveKeypairTab> {
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
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.send),
          onPressed: () async {
            final response = await widget.aewalletClient.keychainDeriveKeyPair({
              'serviceName': payloadServiceNameController.text,
              'index': int.tryParse(payloadIndexController.text),
              'suffix': payloadSuffixController.text
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SmallSpace(),
                Text(
                  "Service's name :",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SmallSpace(),
                Expanded(
                  child: TextFormField(
                    controller: payloadServiceNameController,
                    maxLines: null,
                  ),
                ),
                const SmallSpace(),
                Text(
                  'Index :',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Expanded(
                  child: TextFormField(
                    controller: payloadIndexController,
                    maxLines: null,
                  ),
                ),
                const SmallSpace(),
                Text(
                  'Suffix :',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Expanded(
                  child: TextFormField(
                    controller: payloadSuffixController,
                    maxLines: null,
                  ),
                ),
                const SmallSpace(),
              ],
            ),
          ),
        ),
      );
}
