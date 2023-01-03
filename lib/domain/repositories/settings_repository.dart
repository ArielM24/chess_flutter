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
    AppSettings? settings = await appSettings;
    if (settings == null) {
      success = await setDefaultSettings();
    }
    return success;
  }

  Future<AppSettings?> get appSettings async {
    return await settingsProvider.readSettings();
  }

  Future<bool> setDefaultSettings() async {
    AppSettings settings = AppSettings.defaultValues();
    return await settingsProvider.writeSettings(settings) ?? false;
  }

  Future<bool> get getUseDarkTheme async {
    AppSettings? settings = await appSettings;
    if (settings != null) {
      return settings.useDarkTheme ?? false;
    }
    return false;
  }

  Future<bool> switchUseDarkTheme() async {
    AppSettings? settings = await appSettings;
    if (settings != null) {
      bool useDarkTheme = settings.useDarkTheme ?? false;
      return await settingsProvider
              .writeSettings(settings.copyWith(useDarkTheme: !useDarkTheme)) ??
          false;
    }
    return false;
  }
}
