import 'dart:convert';

import 'package:archethic_wallet_client/archethic_wallet_client.dart' as awc;
import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';
import 'package:logging/logging.dart';

class RemoveServiceTab extends StatefulWidget {
  const RemoveServiceTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<RemoveServiceTab> createState() => _RemoveServiceTabState();
}

class _RemoveServiceTabState extends State<RemoveServiceTab> {
  final payloadTextController = TextEditingController(
    text: '',
  );

  final _logger = Logger('Tab-RemoveService');

  @override
  void dispose() {
    payloadTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            "Service's name :",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TextFormField(
            style: Theme.of(context).textTheme.labelLarge,
            controller: payloadTextController,
            maxLines: null,
          ),
          const SmallSpace(),
          OutlinedButton(
            child: const Icon(Icons.send),
            onPressed: () async {
              final response = await widget.aewalletClient.removeService(
                awc.RemoveServiceRequest(name: payloadTextController.text),
              );
              response.when(
                failure: (failure) {
                  _logger.severe(
                    'Transaction failed',
                    failure,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    ResultSnackbar.error(failure.message),
                  );
                },
                success: (result) {
                  _logger.info(
                    'Transaction succeed : ${json.encode(result)}',
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
