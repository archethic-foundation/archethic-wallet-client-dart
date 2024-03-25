@JS()
library awc;

import 'dart:async';
import 'dart:developer';
import 'dart:html';

import 'package:js/js.dart';

external MessagePort? get awc;
external bool? get awcAvailable;

@JS('onAWCReady')
external set onAWCReady(void Function(MessagePort awc) f);

Future<MessagePort> get asyncAWC async {
  if (awc != null) return awc!;
  log('Wait for awc');
  final awcReadyCompleter = Completer<MessagePort>();

  if (awc != null) awcReadyCompleter.complete(awc!);

  onAWCReady = allowInterop((awc) {
    log('AWC ready !');
  });

  return awcReadyCompleter.future;
}
