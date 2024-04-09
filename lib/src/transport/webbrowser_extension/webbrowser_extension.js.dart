@JS()
library awc;

import 'dart:async';

import 'package:js/js.dart';

// external MessagePort? get awc;
// external bool? get awcAvailable;

// @JS('onAWCReady')
// external set onAWCReady(void Function(MessagePort awc) f);

// Future<MessagePort> get asyncAWC async {
//   if (awc != null) return awc!;
//   log('Wait for awc');
//   final awcReadyCompleter = Completer<MessagePort>();

//   if (awc != null) awcReadyCompleter.complete(awc!);

//   onAWCReady = allowInterop((awc) {
//     log('AWC ready !');
//   });

//   return awcReadyCompleter.future;
// }
@JS('archethic.streamChannel')
external AWCStreamChannelJS? get webBrowserStreamChannel;

@JS()
class AWCStreamChannelJS {
  @JS('state')
  external AWCStreamChannelState get state;

  @JS('connect')
  external Future<void> connect();

  @JS('close')
  external Future<void> close();

  @JS('send')
  external Future<void> send(String data);

  @JS('onReceive')
  external set onReceive(Future<void> Function(String data));

  @JS('onReady')
  external set onReady(Future<void> Function());

  @JS('onClose')
  external set onClose(Future<void> Function(String reason));
}

enum AWCStreamChannelState {
  CONNECTING,
  OPEN,
  CLOSING,
  CLOSED,
}
