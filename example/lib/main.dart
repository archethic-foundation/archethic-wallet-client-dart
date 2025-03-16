import 'package:archethic_wallet_client/archethic_wallet_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dapp_example/logger.dart';
import 'package:flutter_dapp_example/main_screen.dart';

late final ArchethicDAppClient _aewalletClient;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LoggerSetup.instance().setup();

  _aewalletClient = await ArchethicDAppClient.auto(
    origin: const RequestOrigin(
      name: 'FlutterDappExample',
    ),
    replyBaseUrl:
        kIsWeb ? Uri.base.toString() : 'flutterdappexample://dapp.example',
  );

  await _aewalletClient.connect();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Archethic Wallet Client Demo',
      home: Scaffold(
        body: MainScreen(aewalletClient: _aewalletClient),
      ),
      onGenerateRoute: (settings) {
        if ((_aewalletClient as DeeplinkArchethicDappClient)
            .handleRoute(settings.name)) {
          return;
        }
        return null;
      },
    );
  }
}
