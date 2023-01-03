part of 'main_menu_bloc.dart';

enum MainMenuStatus { initial, loadSuccess, loadError, loading }

@immutable
class MainMenuState extends Equatable {
  final MainMenuStatus status;
  final bool useDarkTheme;
  final bool error;
  final String errorMessage;

  const MainMenuState(
      {required this.status,
      this.useDarkTheme = false,
      this.error = false,
      this.errorMessage = ""});
  @override
  List<Object> get props => [status, useDarkTheme, error, errorMessage];

  MainMenuState copyWith({
    MainMenuStatus? status,
    bool? useDarkTheme,
    bool? error,
    String? errorMessage,
  }) {
    return MainMenuState(
        status: status ?? this.status,
        useDarkTheme: useDarkTheme ?? this.useDarkTheme,
        error: error ?? this.error,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}
