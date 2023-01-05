part of 'settings_bloc.dart';

enum SettingsStatus { initial, loading, success, failed, themeChanged }

class SettingsState extends Equatable {
  final SettingsStatus status;
  final AppSettings settings;
  SettingsState({required this.status, AppSettings? settings})
      // ignore: unnecessary_this
      : settings = (settings != null) ? settings : AppSettings.defaultValues();
  @override
  List<Object?> get props => [status, settings];

  SettingsState copyWith({SettingsStatus? status, AppSettings? settings}) {
    return SettingsState(
        status: status ?? this.status, settings: settings ?? this.settings);
  }

  bool get useDarkTheme => settings.useDarkTheme ?? false;
}
