import 'package:chess_flutter/application/pages/main_menu/bloc/main_menu_bloc.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Change theme",
      child: SizedBox(
        height: 50,
        width: 50,
        child: BlocBuilder<MainMenuBloc, MainMenuState>(
          builder: (context, state) {
            IconData icon = state.isDarkTheme ? Icons.sunny : Icons.nightlight;
            Color color =
                state.isDarkTheme ? Colors.amber : Colors.purple[900]!;
            Color splashColor = state.isDarkTheme
                ? AppColors.amberSplash
                : AppColors.violetSplash;
            return MaterialButton(
              color: color,
              padding: const EdgeInsets.all(0),
              splashColor: splashColor,
              onPressed: () => _changeTheme(context),
              child: Icon(icon, color: Colors.white, size: 40),
            );
          },
        ),
      ),
    );
  }

  _changeTheme(BuildContext context) {
    context.read<MainMenuBloc>().add(MainMenuThemeChanged());
  }
}
