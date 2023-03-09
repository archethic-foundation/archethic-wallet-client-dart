import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/snackbar.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Archethic Wallet Client Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'GetEndpoint'),
                Tab(text: 'SendTransaction'),
                Tab(text: 'GetAccounts'),
              ],
            ),
            actions: [
              ConnectionButton(aewalletClient: _newAewalletClient),
            ],
          ),
          body: const TabBarView(
            children: [
              GetEndpointTab(),
              TransactionSendTab(),
              GetAccountsTab(),
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

class ConnectionButton extends StatefulWidget {
  const ConnectionButton({
    super.key,
    required this.aewalletClient,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  State<ConnectionButton> createState() => _ConnectionButtonState();
}

class _ConnectionButtonState extends State<ConnectionButton> {
  StreamSubscription<ArchethicDappConnectionState>?
      _connectionStateSubscription;

  ArchethicDappConnectionState? connectionState;

  @override
  void initState() {
    connectionState = widget.aewalletClient.state;
    _connectionStateSubscription =
        widget.aewalletClient.connectionStateStream.listen((event) {
      setState(() {
        connectionState = event;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _connectionStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButtonTheme(
      data: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: theme.scaffoldBackgroundColor,
          iconColor: theme.primaryColor,
          shape: const CircleBorder(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Builder(
          builder: (context) {
            if (connectionState == null ||
                connectionState ==
                    const ArchethicDappConnectionState.disconnected()) {
              return TextButton(
                onPressed: () {
                  widget.aewalletClient.connect();
                },
                child: const Icon(Icons.play_arrow),
              );
            }

            if (connectionState ==
                const ArchethicDappConnectionState.connecting()) {
              return const TextButton(
                onPressed: null,
                child: CircularProgressIndicator(),
              );
            }

            return TextButton(
              onPressed: () {
                widget.aewalletClient.close();
              },
              child: const Icon(Icons.stop),
            );
          },
        ),
      ),
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

class GetAccountsTab extends StatelessWidget {
  const GetAccountsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _newAewalletClient.getAccounts(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: snapshot.data!.when(
            success: (success) {
              return ListView.builder(
                itemCount: success.accounts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      '${success.accounts[index].name}: ${success.accounts[index].genesisAddress}',
                    ),
                  );
                },
              );
            },
            failure: (failure) => Text('Request failed : $failure'),
          ),
        );
      },
    );
  }
}

class SmallSpace extends StatelessWidget {
  const SmallSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24);
  }
}
