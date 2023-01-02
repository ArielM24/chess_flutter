import 'package:chess_flutter/domain/repositories/theme_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_menu_state.dart';
part 'main_menu_event.dart';

class MainMenuBloc extends Bloc<MainMenuEvent, MainMenuState> {
  final ThemeRepository themeRepository;
  MainMenuBloc({required this.themeRepository})
      : super(const MainMenuState(status: MainMenuStatus.initial)) {
    on<MainMenuStarted>(_onMainMenuStarted);
    on<MainMenuThemeChanged>(_onMainMenuThemeChanged);
  }
  _onMainMenuStarted(
      MainMenuStarted event, Emitter<MainMenuState> emitter) async {
    try {
      bool isDarkTheme = await themeRepository.getDarkTheme();
      emitter.call(state.copyWith(
          status: MainMenuStatus.loadSuccess, isDarkTheme: isDarkTheme));
    } catch (error) {
      emitter.call(state.copyWith(
          status: MainMenuStatus.loadError,
          error: true,
          errorMessage: "Unnable to read database"));
    }
  }

  _onMainMenuThemeChanged(
      MainMenuThemeChanged event, Emitter<MainMenuState> emitter) async {
    try {
      emitter.call(state.copyWith(status: MainMenuStatus.loading));
      bool isDarkTheme = !state.isDarkTheme;
      await themeRepository.setDarkTheme(isDarkTheme);
      emitter.call(state.copyWith(
          status: MainMenuStatus.loadSuccess, isDarkTheme: isDarkTheme));
    } catch (error) {
      emitter.call(state.copyWith(
          status: MainMenuStatus.loadError,
          error: true,
          errorMessage: "Unnable to connect to database"));
    }
  }
}
