part of 'forge_bloc.dart';

enum ForgeStatus { initial, success, failure }

class ForgeState extends Equatable {
  final ForgeStatus status;
  final bool useDarkTheme;
  const ForgeState({required this.status, this.useDarkTheme = false});
  @override
  List<Object?> get props => [status];

  ForgeState copyWith({ForgeStatus? status, bool? useDarkTheme}) {
    return ForgeState(
        status: status ?? this.status,
        useDarkTheme: useDarkTheme ?? this.useDarkTheme);
  }
}
