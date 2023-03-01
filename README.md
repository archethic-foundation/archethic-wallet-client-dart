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

### Android

A ``queries`` element must be added to your manifest as a child of the root element.

```xml
    <queries>
        <!-- AEWallet deeplink support -->
        <intent>
            <action android:name="android.intent.action.VIEW" />
            <data
                android:scheme="aewallet"
                android:host="archethic.tech" />
        </intent>
    </queries>
```

Add a ``meta-data`` tag and ``intent filter`` to ``AndroidManifest.xml`` inside the ``activity`` tag with the ".MainActivity" name:

```xml
<!-- AEWallet deeplink support -->
<meta-data
    android:name="flutter_deeplinking_enabled"
    android:value="true" />
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <!-- Replace `flutterdappexample` by your custom deeplink scheme -->
    <!-- Replace `dapp.example` by your custom deeplink host -->
    <!-- These will be used to compose the replyUrl when sending RPCs -->
    <data
        android:scheme="flutterdappexample"  
        android:host="dapp.example" />
</intent-filter>
```

### iOS

Add ``LSApplicationQueriesSchemes`` entries in your Info.plist file.

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>aewallet</string>
</array>
```

Add two new keys to ``Info.plist`` in the ios/Runner directory:

```xml
<key>FlutterDeepLinkingEnabled</key>
<true/>
<key>CFBundleURLTypes</key>
<array>
    <dict>
    <key>CFBundleTypeRole</key>
    <string>Editor</string>
    <!-- Replace `flutterdappexample` by your custom deeplink scheme -->
    <!-- Replace `dapp.example` by your custom deeplink host -->
    <!-- These will be used to compose the replyUrl when sending RPCs -->
    <key>CFBundleURLName</key>
    <string>dapp.example</string>
    <key>CFBundleURLSchemes</key>
    <array>
    <string>flutterdappexample</string>
    </array>
    </dict>
</array>
```

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

        //... do everything else needed by your application
        return null;
      },
    );
  }
}
```

### Emit requests
```dart
final response = await _aewalletClient.sendTransaction(
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