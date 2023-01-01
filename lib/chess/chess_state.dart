part of 'chess_bloc.dart';

@immutable
abstract class ChessState extends Equatable {
  const ChessState();
  @override
  List<Object> get props => [];
}

class ChessInitial extends ChessState {}

class LoadChessGame extends ChessState {}

class ChessGameLoaded extends ChessState {
  final ChessGame game;
  const ChessGameLoaded({required this.game});
  @override
  List<Object> get props => [game];
}
