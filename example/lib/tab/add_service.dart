import 'dart:convert';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';

class AddServiceTab extends StatefulWidget {
  const AddServiceTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<AddServiceTab> createState() => _AddServiceTabState();
}

class _AddServiceTabState extends State<AddServiceTab> {
  final payloadTextController = TextEditingController(
    text: '',
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
              final response = await widget.aewalletClient
                  .addService({'name': payloadTextController.text});
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
        ],
      ),
    );
  }
}
