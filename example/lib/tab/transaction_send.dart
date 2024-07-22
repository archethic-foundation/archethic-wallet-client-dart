import 'dart:convert';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';
import 'package:logging/logging.dart';

class TransactionSendTab extends StatefulWidget {
  const TransactionSendTab({
    required this.aewalletClient,
    super.key,
  });
  final ArchethicDAppClient aewalletClient;

  @override
  State<TransactionSendTab> createState() => _TransactionSendTabState();
}

class _TransactionSendTabState extends State<TransactionSendTab> {
  final payloadTextController = TextEditingController(
    text: r'''
 {
    "type": "token",
    "version": 3,
    "generateEncryptedSeedSC": false,
    "data": {
      "content": "{ \"name\": \"NFT 001\", \"supply\": 100000000, \"type\": \"non-fungible\", \"symbol\": \"NFT1\", \"aeip\": [2], \"properties\": {}}",
      "code": "",
      "ownerships":[],
      "ledger": {
        "uco": {
          "transfers": []
        },
        "token": {
          "transfers": []
        }
      },
      "recipients": []
    }
  }
''',
  );

  final _logger = Logger('Tab-TransactionSend');

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
          Text(
            'Payload :',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SmallSpace(),
          Expanded(
            child: TextFormField(
              style: Theme.of(context).textTheme.labelLarge,
              controller: payloadTextController,
              maxLines: null,
            ),
          ),
          const SmallSpace(),
          OutlinedButton(
            child: const Icon(Icons.send),
            onPressed: () async {
              try {
                final response = await widget.aewalletClient.sendTransaction(
                  SendTransactionRequest.fromJson(
                    jsonDecode(payloadTextController.text),
                  ),
                );

                response.when(
                  failure: (failure) {
                    _logger.severe(
                      'Transaction failed',
                      failure,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      ResultSnackbar.error(
                        failure.message,
                      ),
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
              } catch (e) {
                if (!context.mounted) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  ResultSnackbar.error(e.toString()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
