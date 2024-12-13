import 'dart:convert';

import 'package:archethic_lib_dart/archethic_lib_dart.dart' as archethic;
import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/widgets/snackbar.dart';
import 'package:flutter_dapp_example/widgets/space.dart';
import 'package:logging/logging.dart';

class EncryptPayloadsTab extends StatefulWidget {
  const EncryptPayloadsTab({required this.aewalletClient, super.key});

  final ArchethicDAppClient aewalletClient;

  @override
  State<EncryptPayloadsTab> createState() => _EncryptPayloadsTabState();
}

class _EncryptPayloadsTabState extends State<EncryptPayloadsTab> {
  final payloadTextController = TextEditingController(
    text: '''
{
    "serviceName": "archethic-wallet-Bob",
    "pathSuffix": "",
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

  final _logger = Logger('Tab-EncryptPayloads');

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
            'Public key to verify decrypt :',
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
                final encryptPayloadRequest = EncryptPayloadRequest.fromJson(
                  jsonDecode(payloadTextController.text),
                );
                final response = await widget.aewalletClient
                    .encryptPayloads(encryptPayloadRequest);
                await response.when(
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
                  success: (result) async {
                    _logger.info(
                      'Command succeed : ${json.encode(result)}',
                    );

                    final payloads = <DecryptPayloadRequestData>[];

                    for (final encryptedPayload in result.encryptedPayloads) {
                      payloads.add(
                        DecryptPayloadRequestData(
                          payload: encryptedPayload.encryptedPayload,
                          isHexa: true,
                        ),
                      );
                    }
                    final decryptPayloadRequest = DecryptPayloadRequest(
                      serviceName: encryptPayloadRequest.serviceName,
                      pathSuffix: encryptPayloadRequest.pathSuffix,
                      description: {'en': 'test decrypt'},
                      payloads: payloads,
                    );
                    final response = await widget.aewalletClient
                        .decryptPayloads(decryptPayloadRequest);
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
                        String decryptedPayloadInfo;
                        var i = 0;
                        for (final decryptedPayload
                            in result.decryptedPayloads) {
                          if (encryptPayloadRequest.payloads[i].isHexa) {
                            decryptedPayloadInfo =
                                decryptedPayload.decryptedPayload;
                          } else {
                            decryptedPayloadInfo = utf8.decode(
                              archethic.hexToUint8List(
                                decryptedPayload.decryptedPayload,
                              ),
                            );
                          }

                          if (decryptedPayloadInfo ==
                              encryptPayloadRequest.payloads[i].payload) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              ResultSnackbar.success(
                                'Decrypted payload "$decryptedPayloadInfo" = payload "${encryptPayloadRequest.payloads[i].payload}"',
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              ResultSnackbar.error(
                                'Decrypted payload "$decryptedPayloadInfo" <> payload "${encryptPayloadRequest.payloads[i].payload}"',
                              ),
                            );
                          }

                          i++;
                        }
                      },
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
