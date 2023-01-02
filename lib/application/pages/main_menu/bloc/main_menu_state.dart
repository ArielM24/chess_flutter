part of 'main_menu_bloc.dart';

enum MainMenuStatus { initial, loadSuccess, loadError, loading }

@immutable
class MainMenuState extends Equatable {
  final MainMenuStatus status;
  final bool isDarkTheme;
  final bool error;
  final String errorMessage;

  const MainMenuState(
      {required this.status,
      this.isDarkTheme = false,
      this.error = false,
      this.errorMessage = ""});
  @override
  List<Object> get props => [status, isDarkTheme, error, errorMessage];

  MainMenuState copyWith({
    MainMenuStatus? status,
    bool? isDarkTheme,
    bool? error,
    String? errorMessage,
  }) {
    return MainMenuState(
        status: status ?? this.status,
        isDarkTheme: isDarkTheme ?? this.isDarkTheme,
        error: error ?? this.error,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}
