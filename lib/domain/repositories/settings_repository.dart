import 'package:chess_flutter/data/models/app_settings.dart';
import 'package:chess_flutter/data/providers/settings_provider.dart';

class SettingsRepository {
  final SettingsProvider settingsProvider;
  SettingsRepository() : settingsProvider = SettingsProvider();
  Future<bool> initRepository() async {
    bool success = await settingsProvider.init();
    if (!success) {
      return false;
    }
    if (appSettings == null) {
      success = await setDefaultSettings();
    }
    return success;
  }

  AppSettings? get appSettings {
    return settingsProvider.settings;
  }

  Future<bool> setDefaultSettings() async {
    AppSettings settings = AppSettings.defaultValues();
    return await settingsProvider.writeSettings(settings) ?? false;
  }

  bool get useDarkTheme {
    AppSettings? settings = appSettings;
    if (settings != null) {
      return settings.useDarkTheme ?? false;
    }
    return false;
  }

  Future<bool> switchUseDarkTheme() async {
    if (appSettings != null) {
      bool useDarkTheme = appSettings!.useDarkTheme ?? false;
      return await settingsProvider.writeSettings(
              appSettings!.copyWith(useDarkTheme: !useDarkTheme)) ??
          false;
    }
    return false;
  }
}
