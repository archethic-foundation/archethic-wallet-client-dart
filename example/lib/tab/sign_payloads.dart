import 'dart:convert';

import 'package:archethic_lib_dart/archethic_lib_dart.dart' as archethic;
import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';
import 'package:logging/logging.dart';

class SignPayloadsTab extends StatefulWidget {
  const SignPayloadsTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<SignPayloadsTab> createState() => _SignPayloadsTabState();
}

class _SignPayloadsTabState extends State<SignPayloadsTab> {
  final payloadTextController = TextEditingController(
    text: '''
{
    "serviceName": "archethic-wallet-Bob",
    "pathSuffix": "",
    "description": {
      "en": "This is an English description.",
      "fr": "Ceci est une description en français."
    },
    "payloads": [
        {
            "payload": "My first payload",
            "isHexa": false
        },
        {
            "payload": "1f3eea12",
            "isHexa": true
        }
    ]
}
''',
  );
  final publicKeyTextController = TextEditingController(text: '');

  final _logger = Logger('Tab-SignPayloads');

  @override
  void dispose() {
    payloadTextController.dispose();
    publicKeyTextController.dispose();
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
          Text(
            'Public key to verify signature :',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Expanded(
            child: TextFormField(
              style: Theme.of(context).textTheme.labelLarge,
              controller: publicKeyTextController,
              maxLines: null,
            ),
          ),
          const SmallSpace(),
          OutlinedButton(
            child: const Icon(Icons.send),
            onPressed: () async {
              try {
                final signPayloadRequest = SignPayloadRequest.fromJson(
                  jsonDecode(payloadTextController.text),
                );
                final response = await widget.aewalletClient
                    .signPayloads(signPayloadRequest);
                response.when(
                  failure: (failure) {
                    _logger.severe(
                      'Command failed',
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
                      'Command succeed : ${json.encode(result)}',
                    );
                    var i = 0;
                    for (final signedPayload in result.signedPayloads) {
                      final signedPayloadVerified = archethic.verify(
                        signedPayload.signedPayload,
                        signPayloadRequest.payloads[i].payload,
                        publicKeyTextController.text,
                        isDataHexa: signPayloadRequest.payloads[i].isHexa,
                      );
                      if (signedPayloadVerified) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          ResultSnackbar.success(
                            '$i: ${signedPayload.signedPayload}',
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          ResultSnackbar.error(
                            'Signature is not valid with this public key',
                          ),
                        );
                      }
                      i++;
                    }
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
