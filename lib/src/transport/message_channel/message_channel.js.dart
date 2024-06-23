@JS()
library awc;

import 'dart:async';
import 'dart:developer';
import 'dart:js_interop';
import 'package:web/web.dart';

external MessagePort? get awc;
external bool? get awcAvailable;

@JS('onAWCReady')
external set onAWCReady(void Function(MessagePort awc) f);

Future<MessagePort> get asyncAWC async {
  if (awc != null) {
    return awc!;
  }

  log('Wait for awc');
  final awcReadyCompleter = Completer<MessagePort>();

  onAWCReady = (port) {
    awcReadyCompleter.complete(port);
    log('AWC ready !');
  };

  // Handle potential timeout or error (optional)
  await Future.delayed(const Duration(seconds: 5), () {
    if (!awcReadyCompleter.isCompleted) {
      awcReadyCompleter.completeError(Exception('Timeout waiting for awc'));
    }
  });

  return awcReadyCompleter.future;
}
