import 'package:chess_flutter/application/pages/main_menu/main_menu.dart';
import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';

class ForgePage extends StatelessWidget {
  static const String path = "/forge";
  const ForgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () => context.go(MainMenuPage.path),
          ),
          title: const Text("Forge")),
    );
  }
}
