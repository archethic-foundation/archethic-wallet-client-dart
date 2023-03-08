import 'dart:convert';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

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
    "version": 1,
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
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.send),
          onPressed: () async {
            final response = await widget.aewalletClient.sendTransaction(
              jsonDecode(payloadTextController.text),
            );

            response.when(
              failure: (failure) {
                log(
                  'Transaction failed',
                  error: failure,
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  ResultSnackbar.error(failure.message ?? 'An error occured'),
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
                  'Payload :',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SmallSpace(),
                Expanded(
                  child: TextFormField(
                    controller: payloadTextController,
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
