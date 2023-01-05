part of 'forge_bloc.dart';

class ForgeEvent extends Equatable {
  const ForgeEvent();
  @override
  List<Object?> get props => [];
}

class ForgeStarted extends ForgeEvent {}

class ForgeSuccess extends ForgeEvent {}

class ForgeFailed extends ForgeEvent {}
