class ChessPiece {
  String name;
  int number;
  int row;
  String coulumn;
  bool wasMoved;
  String image;
  ChessPiece(
      {required this.name,
      required this.image,
      required this.number,
      required this.coulumn,
      required this.row,
      required this.wasMoved});
}
