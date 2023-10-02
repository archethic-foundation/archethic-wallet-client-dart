import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/aewalletclient_mixin.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class TransactionSendTab extends StatefulWidget {
  const TransactionSendTab({
    super.key,
  });

  @override
  State<TransactionSendTab> createState() => _TransactionSendTabState();
}

class _TransactionSendTabState extends State<TransactionSendTab>
    with AEWalletClientInstance {
  final payloadTextController = TextEditingController(
    text: r'''
 {
    "type": "token",
    "version": 2,
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
                final response = await aewalletClient.sendTransaction(
                  jsonDecode(payloadTextController.text),
                );

                response.when(
                  failure: (failure) {
                    log(
                      'Transaction failed',
                      error: failure,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      ResultSnackbar.error(
                        failure.message ?? 'An error occured',
                      ),
                    );
                  },
                  success: (result) {
                    log(
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
