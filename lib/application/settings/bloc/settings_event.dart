part of 'settings_bloc.dart';

class SettingsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SettingsStarted extends SettingsEvent {}

class SettingsLoading extends SettingsEvent {}

class SettingsSuccess extends SettingsEvent {}

class SettingsFailed extends SettingsEvent {}

class SettingsThemeChanged extends SettingsEvent {}

class SettingsThemeChangeSucces extends SettingsEvent {}
