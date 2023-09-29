import 'dart:convert';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class SignTransactionsTab extends StatefulWidget {
  const SignTransactionsTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<SignTransactionsTab> createState() => _SignTransactionsTabState();
}

class _SignTransactionsTabState extends State<SignTransactionsTab> {
  final payloadTextController = TextEditingController(
    text: r'''
{
    "serviceName": "archethic-wallet-BOB",
    "pathSuffix": "",
    "transactions": [
        {
            "type": "token",
            "version": 2,
            "data": {
                "content": "{ \"name\": \"NFT 001\", \"supply\": 100000000, \"type\": \"non-fungible\", \"symbol\": \"NFT1\", \"aeip\": [2], \"properties\": {}}",
                "code": "",
                "ownerships": [],
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
        },
        {
            "type": "token",
            "version": 2,
            "data": {
                "content": "{ \"name\": \"NFT 002\", \"supply\": 100000000, \"type\": \"non-fungible\", \"symbol\": \"NFT2\", \"aeip\": [2], \"properties\": {}}",
                "code": "",
                "ownerships": [],
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
    ]
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
                final response = await widget.aewalletClient.signTransactions(
                  jsonDecode(payloadTextController.text),
                );
                response.when(
                  failure: (failure) {
                    log(
                      'Command failed',
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
                      'Command succeed : ${json.encode(result)}',
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
