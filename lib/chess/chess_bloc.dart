import 'package:chess_flutter/models/chess_game.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chess_event.dart';
part 'chess_state.dart';

class ChessBloc extends Bloc<ChessEvent, ChessState> {
  ChessBloc() : super(ChessInitial()) {
    on<ChessEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
