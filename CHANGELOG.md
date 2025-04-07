# 2.2.3
- Upgrade dependencies

# 2.2.2
- License MIT

# 2.2.1
- Fix compilation with dart2js

# 2.2.0
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.7.0)
- Upgrade flutter version to 3.27 
 
# 2.1.12
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.6.0)
  
# 2.1.11
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.5.1)

# 2.1.10
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.2.0)

# 2.1.9
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.1.0)

# 2.1.8
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.0.0)

# 2.1.8-beta.2
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.0.0-beta)

# 2.1.8-beta.1
- feat: :sparkles: Add encrypt & decrypt payloads methods

# 2.1.8-beta

- ⬆️ Upgrade dependencies

# 2.1.7

- ⬆️ Upgrade dependencies

# 2.1.6

- ✅ Improve lib score.
- ⬆️ Upgrade dependencies

# 2.1.5

- fix: 🐛 Message channel dispose uninitialized late field.

# 2.1.4

- build: :arrow_up: Upgrade archethic_lib_dart

# 2.1.3

- feat: :sparkles: Whitelist authorized transport methods.

# 2.1.2

- fix: 🐛 Improve deeplink availability detection

# 2.1.1

- fix: 🐛 Increase websocket discovery timeout.

# 2.1.0

- feat: :sparkles: Websocket connector attempts a connection to determine its availability.
- feat: :sparkles: Deeplink commands use appropriate timeout

- **Breaking change :** Auto-connect is now asynchronous.
- **Breaking change :** feat: :sparkles: Deeplink is enabled on Web platform.

# 2.0.8

- Add sign payloads command
- Add remove service command

# 2.0.7

- Fix : wrong connection status with webbrowser extension.

# 2.0.6

- Fix : Dart Dapps need to request connection twice.

# 2.0.5

- Use Logging lib for logs
- Prevent simultaneous connexion/deconnexion requests
- Fix embedded webview RPC communication

# 2.0.4

- Update Archethic Dart SDK version 3.4.2
- Example app: Regenerate all platform's configurations

# 2.0.3

- WASM compatibility : Remove dart:js_util references

# 2.0.2

- Fix classes using dart:js_interop

# 2.0.1

- Migration to dart:js_interop & package:web/web.dart
- Migration to Flutter 3.22
- Add a description to explain the purpose of signing transactions

# 2.0.0

- Add models for all RPC **Requests** and **Responses**

- **Breaking change :** `ArchethicDAppClient` methods use `Requests` models as input instead of `Map<String, dynamic>`

# 1.2.7

- Javascript Async operations are awaitable from Dart.

# 1.2.6

- Update Archethic Dart SDK version 3.3.16

# 1.2.5

- Update Archethic Dart SDK version 3.3.15

# 1.2.4

- Update Archethic Dart SDK version 3.3.14

# 1.2.3

- Update Archethic Dart SDK version 3.3.13

# 1.2.2

- Fix Browser extension detection

# 1.2.1

- Fix Transport method detection when browser extension missing

# 1.2.0

- Web extension support

# 1.1.0

- Add MessageChannel RPC for web clients - stable version
- Update Archethic Dart SDK version 3.3.11

# 1.1.0-dev.3

- Update Archethic Dart SDK version 3.3.10

# 1.1.0-dev.2

- Update Archethic Dart SDK version 3.3.9

# 1.1.0-dev.1

- Add MessageChannel RPC for web clients - Exclude Desktop

# 1.1.0-dev.0

- Add MessageChannel RPC for web clients

# 1.0.11

- Update Archethic Dart SDK version 3.3.7

# 1.0.10

- Connect waits for connection to be ready or failed.

# 1.0.9

- Add a flag in sendTx method to add encrypted smart contract's seed in a secret while his creation
- Add a method to refresh current account in the wallet

# 1.0.8

- Update Archethic Dart SDK

# 1.0.7

- Update Archethic Dart SDK version 3.3.1

# 1.0.6

- Update Archethic Dart SDK version (fix getStorageNoncePublicKey method)

# 1.0.5

- Add getCurrentAccount command
- Add sign_transactions command
- Update Archethic SDK version
- Change AWC example app's UX/UI
- Add new Failure : serviceAlreadyExists

# 1.0.4

- Add getAccounts command
- Add addService command
- Add getServicesFromKeychain command
- Add keychainDeriveKeypair command
- Add keychainDeriveAddress command

# 1.0.3

- Add macOS configuration in README.md

# 1.0.2

- Add compatibility with web platform

# 1.0.1

- Fix freezed generation following the change of name of the lib.

# 1.0.0

- Initial version.
