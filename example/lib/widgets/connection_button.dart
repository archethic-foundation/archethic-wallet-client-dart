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
    final textTheme = theme.textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    if (connectionState == const ArchethicDappConnectionState.disconnected()) {
      return OutlinedButton(
        onPressed: () {
          widget.aewalletClient.connect();
        },
        child: Row(
          children: [
            const Icon(
              Icons.blur_circular,
              color: Colors.red,
              size: 13,
            ),
            const SizedBox(width: 4),
            Text('Not connected', style: textTheme.labelMedium),
          ],
        ),
      );
    }

    if (connectionState == null ||
        connectionState == const ArchethicDappConnectionState.connecting()) {
      return const TextButton(
        onPressed: null,
        child: CircularProgressIndicator(),
      );
    }

    return OutlinedButton(
      onPressed: () {
        widget.aewalletClient.close();
      },
      child: Row(
        children: [
          const Icon(
            Icons.blur_circular,
            color: Colors.green,
            size: 13,
          ),
          const SizedBox(width: 4),
          Text(
            'Connected',
            style: textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
