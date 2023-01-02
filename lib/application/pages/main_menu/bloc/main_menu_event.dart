part of 'main_menu_bloc.dart';

@immutable
abstract class MainMenuEvent extends Equatable {
  const MainMenuEvent();
  @override
  List<Object> get props => [];
}

class MainMenuStarted extends MainMenuEvent {}

class MainMenuLoading extends MainMenuEvent {}

class MainMenuLoaded extends MainMenuEvent {}

class MainMenuFailed extends MainMenuEvent {}

class MainMenuThemeChanged extends MainMenuEvent {}
