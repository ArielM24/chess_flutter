import 'package:chess_flutter/application/pages/main_menu/widgets/theme_button.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/forge_button.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/main_menu_title.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/multi_player_button.dart';
import 'package:chess_flutter/application/pages/main_menu/widgets/replay_button.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';

import 'bloc/main_menu_bloc.dart';
import 'widgets/sigle_player_button.dart';

class MainMenuPage extends StatelessWidget {
  static const String path = "/";
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainMenuBloc, MainMenuState>(
      builder: (context, state) {
        Widget body = const Center(
            child: GFLoader(
          type: GFLoaderType.circle,
        ));
        Widget? themeButton;
        Color? backgroundColor;
        if (state.status == MainMenuStatus.loadError) {
          body = Center(child: Text(state.errorMessage));
        }
        if (state.status == MainMenuStatus.loadSuccess) {
          backgroundColor = state.useDarkTheme
              ? AppColors.darkBackground
              : AppColors.lightBackground;
          body = Column(children: const [
            MainMenuTitle(),
            SinglePlayerButton(),
            MultiPlayerButton(),
            ReplayButton(),
            ForgeButton()
          ]);
          themeButton = const ThemeButton();
        }
        return Scaffold(
          body: body,
          backgroundColor: backgroundColor,
          floatingActionButton: themeButton,
        );
      },
    );
  }
}
