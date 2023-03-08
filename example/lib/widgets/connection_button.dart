import 'dart:async';

import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';

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
