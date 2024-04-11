@JS()
library awc;

import 'dart:async';

import 'package:js/js.dart';

@JS('archethic')
external ArchethicJS? get archethic;

@JS()
class ArchethicJS {
  @JS('streamChannel')
  external AWCStreamChannelJS? get streamChannel;
}

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
