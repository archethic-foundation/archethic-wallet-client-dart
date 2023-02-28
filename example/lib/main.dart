import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/snackbar.dart';
import 'package:libdart_dapp/libdart_dapp.dart';

void main() {
  runApp(const MyApp());
}

final _newAewalletClient = ArchethicDAppClient.auto(
  origin: const RequestOrigin(
    name: 'FlutterDappExample',
  ),
  replyBaseUrl: 'flutterdappexample://dapp.example',
)..connect();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dapp Demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'GetEndpoint'),
                Tab(text: 'SendTransaction'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              GetEndpointTab(),
              TransactionSendTab(),
            ],
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        if ((_newAewalletClient as DeeplinkArchethicDappClient)
            .handleRoute(settings.name)) return;
        return null;
      },
    );
  }
}

class GetEndpointTab extends StatelessWidget {
  const GetEndpointTab({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _newAewalletClient.getEndpoint(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) => Text('Endpoint Url : ${success.endpointUrl}'),
            failure: (failure) => Text('Request failed : $failure'),
          ),
        );
      },
    );
  }
}

class TransactionSendTab extends StatefulWidget {
  const TransactionSendTab({super.key});

  @override
  State<TransactionSendTab> createState() => _TransactionSendTabState();
}

class _TransactionSendTabState extends State<TransactionSendTab> {
  final payloadTextController = TextEditingController(text: """
 {
    "type": "token",
    "version": 1,
    "data": {
      "content": "{ \\"name\\": \\"NFT 001\\", \\"supply\\": 100000000, \\"type\\": \\"non-fungible\\", \\"symbol\\": \\"NFT1\\", \\"aeip\\": [2], \\"properties\\": {}}",
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
""");

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
            final response = await _newAewalletClient.sendTransaction(
              jsonDecode(payloadTextController.text),
            );

            response.when(
              failure: (failure) {
                log(
                  'Transaction failed',
                  error: failure,
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  ResultSnackbar.error(failure.message ?? "An error occured"),
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SmallSpace(),
                Text(
                  'Payload :',
                  style: Theme.of(context).textTheme.headlineSmall!,
                ),
                const SmallSpace(),
                Expanded(
                  child: TextFormField(
                    controller: payloadTextController,
                    minLines: null,
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

class SmallSpace extends StatelessWidget {
  const SmallSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24);
  }
}
