import 'package:chess_flutter/data/models/app_settings.dart';
import 'package:chess_flutter/domain/repositories/settings_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsRepository settingsRepository;
  SettingsBloc({required this.settingsRepository})
      : super(SettingsState(
            status: SettingsStatus.initial,
            settings: settingsRepository.appSettings)) {
    on<SettingsStarted>(_onSettingsStarted);
    on<SettingsThemeChanged>(_onSettingsThemeChanged);
  }

  _onSettingsStarted(
      SettingsStarted event, Emitter<SettingsState> emitter) async {
    emitter.call(state.copyWith(status: SettingsStatus.success));
  }

  _onSettingsThemeChanged(
      SettingsThemeChanged event, Emitter<SettingsState> emitter) async {
    try {
      emitter.call(state.copyWith(status: SettingsStatus.loading));
      bool success = await settingsRepository.switchUseDarkTheme();
      if (!success) {
        emitter.call(state.copyWith(status: SettingsStatus.failed));
      }
      AppSettings? settings = settingsRepository.appSettings;
      if (settings != null) {
        emitter.call(state.copyWith(
            status: SettingsStatus.themeChanged, settings: settings));
      } else {
        emitter.call(state.copyWith(status: SettingsStatus.failed));
      }
    } catch (error) {
      emitter.call(state.copyWith(status: SettingsStatus.failed));
    }
  }
}
