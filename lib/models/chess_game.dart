import 'chess_piece.dart';

class ChessGame {
  String playerBName;
  String playerWName;
  String gameId;
  List<String> moves;
  List<ChessPiece> board;
  ChessGame(
      {required this.playerBName,
      required this.playerWName,
      required this.gameId,
      required this.board,
      required this.moves});
}
