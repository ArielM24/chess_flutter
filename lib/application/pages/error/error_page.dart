import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const String path = "/error";
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    );
  }
}
