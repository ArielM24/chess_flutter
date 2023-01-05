import 'package:chess_flutter/data/providers/settings_provider.dart';
import 'package:chess_flutter/domain/repositories/settings_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'forge_event.dart';
part 'forge_state.dart';

class ForgeBloc extends Bloc<ForgeEvent, ForgeState> {
  final SettingsRepository settingsRespository;
  ForgeBloc({required this.settingsRespository})
      : super(ForgeState(
            status: ForgeStatus.initial,
            useDarkTheme: settingsRespository.useDarkTheme)) {
    on<ForgeStarted>(_onForgeStarted);
  }

  _onForgeStarted(ForgeStarted event, Emitter<ForgeState> emitter) async {
    bool useDarkTheme = state.useDarkTheme;
    emitter.call(state.copyWith(useDarkTheme: useDarkTheme));
  }
}
