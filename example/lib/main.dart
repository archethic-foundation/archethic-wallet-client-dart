import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/aewalletclient_mixin.dart';
import 'package:flutter_dapp_example/connection_overlay.dart';
import 'package:flutter_dapp_example/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with AEWalletClientInstance {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Archethic Wallet Client Demo',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const ConnectionOverlay(
        child: Scaffold(
          body: MainScreen(),
        ),
      ),
      onGenerateRoute: (settings) {
        if ((aewalletClient as DeeplinkArchethicDappClient)
            .handleRoute(settings.name)) return;
        return null;
      },
    );
  }
}
