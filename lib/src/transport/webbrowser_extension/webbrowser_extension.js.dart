// ignore_for_file: avoid_setters_without_getters

@JS()
library awc;

import 'dart:js_interop';

extension type ArchethicJS._(JSObject _) implements JSObject {
  @JS('streamChannel')
  external AWCStreamChannelJS? get streamChannel;
}

@JS('archethic')
external ArchethicJS? get archethic;

extension type AWCStreamChannelJS._(JSObject _) implements JSObject {
  external AWCStreamChannelState get state;

  /// This returns a promise.
  /// You must use `promiseTofuture` to call this from Dart code.
  external JSPromise connect();

  /// This returns a promise.
  /// You must use `promiseTofuture` to call this from Dart code.
  external JSPromise close();

  /// This returns a promise.
  /// You must use `promiseTofuture` to call this from Dart code.
  external JSPromise send(JSString data);
  external set onReceive(JSFunction callback);
  external set onReady(JSFunction callback);
  external set onClose(JSFunction callback);
}

@JS()
extension type AWCStreamChannelState._(JSObject _) implements JSObject {
  external static AWCStreamChannelState get connecting;
  external static AWCStreamChannelState get open;
  external static AWCStreamChannelState get closing;
  external static AWCStreamChannelState get closed;
}
