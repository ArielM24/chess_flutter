import 'package:chess_flutter/application/pages/main_menu/widgets/theme_button.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/forge_button.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/main_menu_title.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/multi_player_button.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/replay_button.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/main_menu_bloc.dart';
import 'widgets/sigle_player_button.dart';

class MainMenuPage extends StatelessWidget {
  static const String path = "/main_menu";
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor;
    return BlocBuilder<MainMenuBloc, MainMenuState>(
      builder: (context, state) {
        if (state.status == MainMenuStatus.loadSuccess) {
          backgroundColor = state.useDarkTheme
              ? AppColors.darkBackground
              : AppColors.lightBackground;
        }

        return Scaffold(
          body: AnimatedContainer(
            color: backgroundColor,
            duration: const Duration(milliseconds: 250),
            child: Column(children: const [
              MainMenuTitle(),
              SinglePlayerButton(),
              MultiPlayerButton(),
              ReplayButton(),
              ForgeButton()
            ]),
          ),
          //backgroundColor: backgroundColor,
          floatingActionButton: const ThemeButton(),
        );
      },
    );
  }
}
