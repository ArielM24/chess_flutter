class ThemeProvider {
  Future<bool> readTheme() async {
    return Future.delayed(const Duration(seconds: 2), () => true);
  }

  Future<bool> writeTheme(bool isDarkTheme) async {
    return Future.delayed(const Duration(seconds: 2), () => true);
  }
}
