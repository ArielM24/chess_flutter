import 'package:chess_flutter/domain/repositories/settings_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loading_app_state.dart';
part 'loading_app_event.dart';

class LoadingAppBloc extends Bloc<LoadingAppEvent, LoadingAppState> {
  final SettingsRepository settingsRepository;
  LoadingAppBloc({required this.settingsRepository})
      : super(const LoadingAppState(status: LoadingAppStatus.initial)) {
    on<LoadingAppStarted>(_onLoadingAppStarted);
  }

  _onLoadingAppStarted(
      LoadingAppStarted event, Emitter<LoadingAppState> emitter) async {
    try {
      emitter.call(state.copyWith(
        status: LoadingAppStatus.loading,
        loadingElement: "Database",
      ));
      bool success = await settingsRepository.initRepository();
      if (!success) {
        emitter.call(state.copyWith(
          status: LoadingAppStatus.failed,
          loadingElement: "Database",
          error: true,
        ));
        return;
      }
      emitter.call(state.copyWith(status: LoadingAppStatus.complete));
    } catch (error) {
      emitter.call(state.copyWith(
        status: LoadingAppStatus.failed,
        error: true,
      ));
    }
  }
}
