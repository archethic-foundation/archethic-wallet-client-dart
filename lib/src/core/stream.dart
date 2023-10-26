import 'dart:async';

class CachedBroadcastStreamController<T> {
  CachedBroadcastStreamController(T initialState) {
    _state = initialState;
  }

  late T _state;
  final _connectionStateController = StreamController<T>.broadcast();

  void add(T newState) {
    _state = newState;
    _connectionStateController.add(newState);
  }

  T get state => _state;

  Stream<T> get stream => _connectionStateController.stream;
}
