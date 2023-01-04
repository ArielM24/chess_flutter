part of 'loading_app_bloc.dart';

abstract class LoadingAppEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingAppStarted extends LoadingAppEvent {}

class LoadingAppSuccess extends LoadingAppEvent {}

class LoadingAppFailed extends LoadingAppEvent {}
