import 'dart:async';
import 'dart:developer';

class JS {
  const JS();
}

const JS js = JS();

dynamic get awc => null;
bool? get awcAvailable => false;

set onAWCReady(void Function(dynamic awc) f) {}

Future<dynamic> get asyncAWC async {
  log('Attempt to access awc on a platform where it is not available');
  throw UnimplementedError('AWC is not available on this platform');
}
