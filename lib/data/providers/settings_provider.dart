import 'package:chess_flutter/data/models/app_settings.dart';
import 'package:isar/isar.dart';

class SettingsProvider {
  Isar? _isar;
  Future<bool> init() async {
    try {
      _isar ??= await Isar.open([AppSettingsSchema]);
      return _isar != null;
    } catch (error) {
      return false;
    }
  }

  Future<AppSettings?> readSettings() async {
    AppSettings? settings;
    if (_isar?.isOpen ?? false) {
      settings = await _isar?.appSettings.get(0);
    }
    return settings;
  }

  Future<bool?> writeSettings(AppSettings settings) async {
    try {
      await _isar?.writeTxn(() async {
        await _isar?.appSettings.put(settings);
      });
      return true;
    } catch (error) {
      return false;
    }
  }
}
