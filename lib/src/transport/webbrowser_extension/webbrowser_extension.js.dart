// ignore_for_file: avoid_setters_without_getters

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

  /// This returns a promise.
  /// You must use `promiseTofuture` to call this from Dart code.
  @JS('connect')
  external Object connect();

  /// This returns a promise.
  /// You must use `promiseTofuture` to call this from Dart code.
  @JS('close')
  external Object close();

  /// This returns a promise.
  /// You must use `promiseTofuture` to call this from Dart code.
  @JS('send')
  external Object send(String data);

  @JS('onReceive')
  external set onReceive(Future<void> Function(String data) callback);

  @JS('onReady')
  external set onReady(Future<void> Function() callback);

  @JS('onClose')
  external set onClose(Future<void> Function(String reason) callback);
}

enum AWCStreamChannelState {
  connecting,
  open,
  closing,
  closed,
}
