A client library to interact with ArchethicWallet RPC API.


# What is ArchethicWallet RPC

Check [AEIP-4](https://github.com/archethic-foundation/aeip/blob/main/AEIP-4.md) to know more.


# Usage

## Add dependency

```sh
$ flutter pub add archethic-wallet-client
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

Add ``LSApplicationQueriesSchemes`` entries in your ``Info.plist`` file.

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>aewallet</string>
</array>
```

Add two new keys to ``Info.plist`` in the ``ios/Runner`` directory:

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

## Other Native setups
### MacOS

Add:

```xml
<key>com.apple.security.network.client</key>
<true/>
```

to `macos/Runner/DebugProfile.entitlements` and `macos/Runner/Release.entitlements`.

## Client setup

### Instanciate a client
```dart
import 'package:archethic-wallet-client/archethic-wallet-client.dart';

// 1. Instanciate a Client
final _aewalletClient = ArchethicDAppClient.auto(
  origin: const RequestOrigin(        // Sets Dapp identity informations. Might be displayed to the user.
    name: 'FlutterDappExample',
  ),
  replyBaseUrl: 'flutterdappexample://dapp.example',    // Deeplink Dapp endpoint
);
```

### [Deeplink only] Listen to deeplink responses

Handle incoming deeplinks in the `onGenerateRoute` method :

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

# RPC Methods

There are two kinds of methods :

- one time call
- subscriptions.

Subscriptions won't be available on Deeplink channel because of technical limitations.

## get_endpoint

Gets the endpoint URL used on AEWallet.

### Request

```typescript
// no payload in request
```

### Success Response

```typescript
{
  "endpointUrl": String // Endpoint URL
}
```


## refresh_current_account

Request the wallet to refresh current account info

### Request

```typescript
// no payload in request
```

### Success Response

```typescript
// no response
```


## get_accounts

Gets the accounts available on AEWallet.

### Request

```typescript
// No payload
```

### Success Response

```typescript
{
  "accounts": [
    {
      "shortName": String,      // Account name
      "serviceName": String     // Service name
      "genesisAddress": String, // Genesis address
    }
  ]
}
```

## send_transaction

Signs and sends a transaction.

### Request

```typescript
{
  "type": String,                 // Type of transaction
  "version": Number,              // Version of the transaction (used for backward compatiblity)
  "data": Object,                 // Transaction data zone (identity, keychain, smart contract, etc.)
  "generateEncryptedSeedSC": bool // (Optional) : if true, add a encrypted (by storage nonce public key) seed in the transaction's ownerships to allow nodes to manage smart contract
}
```

### Success Response

```typescript
{
  "transactionAddress": String,  // Sent transaction address.
  "nbConfirmations": Number,     // Number of received confirmations.
  "maxConfirmations": Number,    // Max number of confirmations.
}
```


## add_service

Add a service in the keychain

### Request

```typescript
{
  "name": String,                 // Name of the service
}
```

### Success Response

```typescript
{
  "transactionAddress": String,  // Transaction address.
  "nbConfirmations": Number,     // Number of received confirmations.
  "maxConfirmations": Number,    // Max number of confirmations.
}
```

## remove_service

Remove a service from the keychain

### Request

```typescript
{
  "name": String,                 // Name of the service
}
```

### Success Response

```typescript
{
  "transactionAddress": String,  // Transaction address.
  "nbConfirmations": Number,     // Number of received confirmations.
  "maxConfirmations": Number,    // Max number of confirmations.
}
```

## get_services_from_keychain

Gets keychain's services from the keychain connected to AEWallet.

### Request

```typescript
// No payload
```

### Success Response

```typescript
{
  "services": [
    {
      "derivationPath": String, // Derivation path
      "curve": String, // Curve
      "hashAlgo": String // Hash Algo
    }
  ]
}
```

## keychain_derive_keypair

Derive a keypair for the given service at the index given and get the public key

### Request

```typescript
{
  "serviceName": String,  // Service name to identify the derivation path to use
  "index": Number,        // Chain index to derive (optional - default to 0)
  "pathSuffix": String    // Additional information to add to a service derivation path (optional - default to empty)
}
```
 
### Success Response

```typescript
{
  "publicKey": String     // Public key of the service at the index given
}
```


## keychain_derive_address

Derive an address for the given service at the index given

### Request

```typescript
{
  "serviceName": String,  // Service name to identify the derivation path to use
  "index": Number,        // Chain index to derive (optional - default to 0)
  "pathSuffix": String    // Additional information to add to a service derivation path (optional - default to empty)
}
```
 
### Success Response

```typescript
{
  "address": String     // Address derived
}
```

## get_current_account

Gets the current account selected on AEWallet.

### Request

```typescript
// No payload
```

### Success Response

```typescript
{
  "shortName": String,      // Account name
  "serviceName": String     // Service name
  "genesisAddress": String, // Genesis address
}
```

## sign_transactions

Signs many transactions.

### Request

```typescript
{
  "serviceName": String,              // Service name to use to sign the tx
  "pathSuffix": String,               // Additional information to add to a service derivation path (optional)
  "description": String {             // Readable description to explain the purpose of signing transactions (locale + description)
    "en": "Readable description in English",
    "fr": "Description lisible en français",
  },
  "transactions": [
    {
      "type": String,                 // Type of transaction
      "version": Number,              // Version of the transaction (used for backward compatiblity)
      "data": Object                  // Transaction data zone (identity, keychain, smart contract, etc.)
    }
  ]
}
```

### Success Response

```typescript
{
  "signedTxs": [
    {
      "address": String,              // Address: hash of the new generated public key for the given transaction
      "previousPublicKey": String,    // Previous generated public key matching the previous signature
      "previousSignature": String,    // Signature from the previous public key
      "originSignature": String       // Signature from the device which originated the transaction (used in the Proof of work)
    }
  ]
}
```

## sign_payloads

Signs many payloads.

### Request

```typescript
{
  "serviceName": String,              // Service name to use to sign the payload
  "pathSuffix": String,               // Additional information to add to a service derivation path (optional)
  "description": String {             // Readable description to explain the purpose of signing payloads (locale + description)
    "en": "Readable description in English",
    "fr": "Description lisible en français",
  },
  "payloads": [
    {
      "payload": String,              // Payload to sign
      "isHexa": boolean               // Precise if the payload if in hexadecimal format
    }
  ]
}
```

### Success Response

```typescript
{
  "signedPayloads": [
    {
      "signedPayload": String,        // Signed payload
    }
  ]
}
```