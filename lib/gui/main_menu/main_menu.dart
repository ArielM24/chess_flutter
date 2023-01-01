import 'package:chess_flutter/gui/main_menu/widgets/main_menu_title.dart';
import 'package:flutter/material.dart';

import 'widgets/new_game_button.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const MainMenuTitle(),
        const NewGameButton(),
      ]),
    );
  }
}
