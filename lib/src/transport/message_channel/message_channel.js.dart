@JS()
library awc;

import 'dart:async';
import 'dart:js_interop';

import 'package:logging/logging.dart';
import 'package:web/web.dart';

@JS()
external MessagePort? get awc;

@JS()
external bool? get awcAvailable;

@JS('onAWCReady')
external set onAWCReady(JSFunction f);

final _logger = Logger('AWC-StreamChannel-MessageChannel-JS');

Future<MessagePort> get asyncAWC async {
  if (awc != null) {
    _logger.info('AWC already ready !');
    return awc!;
  }

  _logger.info('Wait for AWC');
  final awcReadyCompleter = Completer<MessagePort>();

  onAWCReady = (port) {
    awcReadyCompleter.complete(port as MessagePort);
    _logger.info('AWC ready !');
  } as JSFunction;

  // Handle potential timeout or error (optional)
  await Future.delayed(const Duration(seconds: 5), () {
    if (!awcReadyCompleter.isCompleted) {
      _logger.severe('AWC timed out.');
      awcReadyCompleter.completeError(Exception('Timeout waiting for awc'));
    }
  });

  return awcReadyCompleter.future;
}
