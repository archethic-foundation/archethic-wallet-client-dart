A client library to interact with ArchethicWallet RPC API.


# What is ArchethicWallet RPC

Check [AEIP-4](https://github.com/archethic-foundation/aeip/blob/main/AEIP-4.md) to know more.


# Usage

## Add dependency

```sh
$ flutter pub add libdart_dapp
```

## Setup Deeplink

If your application is intended to work on **Android** or **iOS**, you must setup a Deeplink endpoint on your application.

This is required to get [DeeplinkRPC](https://github.com/archethic-foundation/lib-deeplink-rpc) to work.

### Native setup

[Official documentation](https://docs.flutter.dev/development/ui/navigation/deep-linking) explains it well.


## Client setup

### Instanciate a client
```dart
import 'package:libdart_dapp/libdart_dapp.dart';


// 1. Instanciate a Client
final _aewalletClient = ArchethicDAppClient.auto(
  origin: const RequestOrigin(        // Sets Dapp identity informations. Might be displayed to the user.
    name: 'FlutterDappExample',
  ),
  replyBaseUrl: 'flutterdappexample://dapp.example',    // Deeplink Dapp endpoint
);
```

### [Deeplink only] Listen to deeplink responses

```dart
// 2. Listens to deeplink responses
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dapp Demo',
      home: MyHome(),
      onGenerateRoute: (settings) {
        if ((_aewalletClient as DeeplinkArchethicDappClient)
            .handleRoute(settings.name)) return;

        //... do everything else neede by your application
        return null;
      },
    );
  }
}
```

### Emit requests
```dart
final response = await _newAewalletClient.sendTransaction(
    transactionJsonData,
);

response.when(
    failure: (failure) {
        log(
            'Transaction failed',
            error: failure,
        );
    },
    success: (result) {
        log(
            'Transaction succeed : ${json.encode(result)}',
        );
    },
);
```