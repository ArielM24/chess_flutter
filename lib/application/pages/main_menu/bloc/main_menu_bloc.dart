import 'dart:async';

import 'package:chess_flutter/domain/repositories/settings_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_menu_state.dart';
part 'main_menu_event.dart';

class MainMenuBloc extends Bloc<MainMenuEvent, MainMenuState> {
  final SettingsRepository settingsRepository;
  MainMenuBloc({required this.settingsRepository})
      : super(const MainMenuState(status: MainMenuStatus.initial)) {
    on<MainMenuStarted>(_onMainMenuStarted);
    on<MainMenuThemeChanged>(_onMainMenuThemeChanged);
  }

  _onMainMenuStarted(
      MainMenuStarted event, Emitter<MainMenuState> emitter) async {
    emitter.call(state.copyWith(
        status: MainMenuStatus.loadSuccess,
        useDarkTheme: await settingsRepository.getUseDarkTheme));
  }

  _onMainMenuThemeChanged(
      MainMenuThemeChanged event, Emitter<MainMenuState> emitter) async {
    try {
      emitter.call(state.copyWith(status: MainMenuStatus.loading));
      bool success = await settingsRepository.switchUseDarkTheme();
      if (!success) {
        emitter.call(state.copyWith(
            status: MainMenuStatus.loadError,
            error: true,
            errorMessage: "Unnable to connect to database"));
      }
      bool useDarkTheme = await settingsRepository.getUseDarkTheme;
      emitter.call(state.copyWith(
          status: MainMenuStatus.loadSuccess, useDarkTheme: useDarkTheme));
    } catch (error) {
      emitter.call(state.copyWith(
          status: MainMenuStatus.loadError,
          error: true,
          errorMessage: "Unnable to connect to database"));
    }
  }
}
