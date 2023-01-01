import 'package:flutter/material.dart';

class MainMenuTitle extends StatelessWidget {
  const MainMenuTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
          child: Text("Super Chess",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
