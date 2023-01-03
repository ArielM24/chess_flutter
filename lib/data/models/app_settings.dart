import 'package:isar/isar.dart';

part 'app_settings.g.dart';

@collection
class AppSettings {
  Id id = Isar.autoIncrement;
  bool? useDarkTheme;
  int? customThemeColor;
  AppSettings();
  AppSettings.values(
      {required this.id, this.useDarkTheme, this.customThemeColor});

  AppSettings copyWith({Id? id, bool? useDarkTheme, int? customThemeColor}) {
    return AppSettings.values(
        id: id ?? this.id,
        useDarkTheme: useDarkTheme ?? this.useDarkTheme,
        customThemeColor: customThemeColor ?? this.customThemeColor);
  }

  AppSettings.defaultValues()
      : id = 0,
        useDarkTheme = false,
        customThemeColor = 0;
}
