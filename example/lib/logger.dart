import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class LoggerSetup {
  LoggerSetup._();
  factory LoggerSetup.instance() => _instance ??= LoggerSetup._();

  static LoggerSetup? _instance;

  void setup() {
    Logger.root.level = Level.ALL;

    _registerLogListeners();
  }

  void _registerLogListeners() {
    Logger.root.onRecord.listen((event) {
      debugPrint('[${event.loggerName}] ${event.message}');
      if (event.error != null) {
        debugPrint('\t${event.error}');
      }
      if (event.stackTrace != null) {
        debugPrint('\t${event.stackTrace}');
      }
    });
  }
}
