import 'dart:async';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/aewalletclient_mixin.dart';

class ConnectionOverlay extends StatefulWidget {
  const ConnectionOverlay({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ConnectionOverlay> createState() => _ConnectionOverlayState();
}

class _ConnectionOverlayState extends State<ConnectionOverlay>
    with AEWalletClientInstance {
  StreamSubscription<ArchethicDappConnectionState>?
      _connectionStateSubscription;

  late ArchethicDappConnectionState connectionState;

  @override
  void initState() {
    super.initState();
    connectionState = aewalletClient.state;
    _connectionStateSubscription =
        aewalletClient.connectionStateStream.listen((event) {
      setState(() {
        connectionState = event;
      });
    });
  }

  @override
  void dispose() {
    _connectionStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final shouldDisplayPopup = connectionState.isNotSessionOpened;
    return Stack(
      children: [
        widget.child,
        if (shouldDisplayPopup)
          _ConnectionPopupLayout(aewalletClient: aewalletClient),
      ],
    );
  }
}

class _ConnectionPopupLayout extends StatelessWidget {
  const _ConnectionPopupLayout({
    required this.aewalletClient,
  });

  final ArchethicDAppClient aewalletClient;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ModalBarrier(dismissible: false, color: Colors.grey.withAlpha(64)),
        aewalletClient.state.map(
          disconnected: (_) => const _DisconnectedPopupBody(),
          connected: (_) => const _ConnectedPopupBody(),
          connecting: (_) => const _ConnectingPopupBody(),
        ),
      ],
    );
  }
}

class _DisconnectedPopupBody extends StatelessWidget
    with AEWalletClientInstance {
  const _DisconnectedPopupBody();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Not connected'),
      actions: [
        OutlinedButton(
          onPressed: aewalletClient.connect,
          child: const Text('Connect'),
        ),
      ],
    );
  }
}

class _ConnectingPopupBody extends StatelessWidget {
  const _ConnectingPopupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleDialog(
      title: Text('Connecting'),
      children: [
        CircularProgressIndicator(),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class _ConnectedPopupBody extends StatefulWidget {
  const _ConnectedPopupBody({
    super.key,
  });

  @override
  State<_ConnectedPopupBody> createState() => _ConnectedPopupBodyState();
}

class _ConnectedPopupBodyState extends State<_ConnectedPopupBody>
    with AEWalletClientInstance {
  String? _challenge;

  String _generateChallenge() {
    setState(() {
      _challenge = aewalletClient.generateSessionChallenge();
    });
    return _challenge!;
  }

  StreamSubscription<ArchethicDappConnectionState>?
      _connectionStateSubscription;

  late ArchethicDappConnectionState connectionState;

  @override
  void initState() {
    super.initState();
    connectionState = aewalletClient.state;
    _connectionStateSubscription =
        aewalletClient.connectionStateStream.listen((event) {
      if (event.didSessionOpeningFail) {
        setState(() {
          _challenge = null;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Session opening failed : ${event.sessionOpeningFailure}',
            ),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _connectionStateSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_challenge == null) {
      return AlertDialog(
        title: const Text('Connected to AEWallet'),
        content: const Text(
          'You must now open a session.',
        ),
        actions: [
          OutlinedButton(
            onPressed: () async {
              await aewalletClient.openSession(
                OpenSessionRequest(
                  challenge: _generateChallenge(),
                  origin: const SessionRequestOrigin(name: 'Example DApp'),
                  maxDuration: const Duration(minutes: 30),
                ),
              );
            },
            child: const Text('Open session'),
          ),
        ],
      );
    }

    return AlertDialog(
      title: Text(
        'Session verification',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Validate the following challenge in AEWallet',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            _challenge!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
