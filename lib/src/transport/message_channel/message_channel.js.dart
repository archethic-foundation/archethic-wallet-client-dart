@JS()
library awc;

import 'dart:async';
import 'dart:developer';
import 'dart:js_interop';
import 'package:web/web.dart';

@JS()
external MessagePort? get awc;

@JS()
external bool? get awcAvailable;

@JS('onAWCReady')
external set onAWCReady(JSFunction f);

Future<MessagePort> get asyncAWC async {
  if (awc != null) {
    return awc!;
  }

  log('Wait for awc');
  final awcReadyCompleter = Completer<MessagePort>();

  onAWCReady = (port) {
    awcReadyCompleter.complete(port as MessagePort);
    log('AWC ready !');
  } as JSFunction;

  // Handle potential timeout or error (optional)
  await Future.delayed(const Duration(seconds: 5), () {
    if (!awcReadyCompleter.isCompleted) {
      awcReadyCompleter.completeError(Exception('Timeout waiting for awc'));
    }
  });

  return awcReadyCompleter.future;
}
