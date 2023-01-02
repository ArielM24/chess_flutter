import 'package:flutter/material.dart';

class MainMenuTitle extends StatelessWidget {
  const MainMenuTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
          child: Text("Chess Forge",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
