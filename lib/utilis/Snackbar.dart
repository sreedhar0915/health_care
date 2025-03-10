import 'package:flutter/material.dart';

class SnackbarConstant {
  static showOnetimeSnackbar(
      {required BuildContext context,
      required String message,
      Color bg = Colors.black}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
