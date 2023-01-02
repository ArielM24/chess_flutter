import 'package:chess_flutter/data/providers/theme_provider.dart';

class ThemeRepository {
  final ThemeProvider themeProvider = ThemeProvider();
  ThemeRepository();

  Future<bool> getDarkTheme() async {
    return await themeProvider.readTheme();
  }

  Future<bool> setDarkTheme(bool isDarkTheme) async {
    return await themeProvider.writeTheme(isDarkTheme);
  }
}
