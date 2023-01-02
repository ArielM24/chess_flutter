import 'package:flutter/material.dart';

class ErrorBanner extends MaterialBanner {
  final String errorMessage;
  final void Function()? onPressed;
  ErrorBanner({Key? key, required this.errorMessage, this.onPressed})
      : super(
            key: key,
            backgroundColor: Colors.red,
            content: Text(errorMessage),
            actions: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: onPressed,
                  child: const Text("Ok"))
            ]);
}
