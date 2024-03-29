import 'package:flutter/material.dart';

class ResultSnackbar extends SnackBar {
  ResultSnackbar({
    super.key,
    required String prefix,
    required String message,
    required Color color,
  }) : super(
          duration: const Duration(seconds: 5),
          backgroundColor: color,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(prefix),
              SelectableText(message),
            ],
          ),
        );

  factory ResultSnackbar.update(String message) => ResultSnackbar(
        prefix: 'Update received : ',
        message: message,
        color: Colors.blue,
      );

  factory ResultSnackbar.success(String message) => ResultSnackbar(
        prefix: 'Success :',
        message: message,
        color: Colors.green,
      );

  factory ResultSnackbar.error(String message) => ResultSnackbar(
        prefix: 'Error :',
        message: message,
        color: Colors.red,
      );
}
