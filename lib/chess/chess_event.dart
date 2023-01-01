part of 'chess_bloc.dart';

@immutable
abstract class ChessEvent extends Equatable {
  const ChessEvent();

  @override
  List<Object> get props => [];
}

class NewChessGame extends ChessEvent {
  final String playerName;
  final bool isWhitePlayer;
  const NewChessGame({required this.playerName, required this.isWhitePlayer});

  @override
  List<Object> get props => [playerName, isWhitePlayer];
}
