import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/main_screen.dart';

void main() {
  runApp(const MyApp());
}

final _aewalletClient = ArchethicDAppClient.deeplink(
  origin: const RequestOrigin(
    name: 'FlutterDappExample',
  ),
  replyBaseUrl: 'https://ae-dex-alpha.web.app',
)..connect();

class MyApp extends StatelessWidget {
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
      home: Scaffold(
        body: MainScreen(aewalletClient: _aewalletClient),
      ),
      onGenerateRoute: (settings) {
        if ((_aewalletClient as DeeplinkArchethicDappClient)
            .handleRoute(settings.name)) return;
        return null;
      },
    );
  }
}
