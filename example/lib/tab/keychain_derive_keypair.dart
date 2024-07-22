import 'dart:convert';

import 'package:archethic_wallet_client/archethic_wallet_client.dart' as awc;
import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';
import 'package:logging/logging.dart';

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

  final _logger = Logger('Tab-KeychainDeriveKeypair');

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
                  await widget.aewalletClient.keychainDeriveKeyPair(
                awc.KeychainDeriveKeypairRequest(
                  serviceName: payloadServiceNameController.text,
                  index: int.parse(payloadIndexController.text),
                  pathSuffix: payloadSuffixController.text,
                ),
              );
              response.when(
                failure: (failure) {
                  _logger.severe(
                    'Command failed',
                    failure,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    ResultSnackbar.error(failure.message),
                  );
                },
                success: (result) {
                  _logger.info(
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
