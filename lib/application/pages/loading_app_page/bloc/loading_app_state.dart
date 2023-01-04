part of 'loading_app_bloc.dart';

enum LoadingAppStatus { initial, loading, complete, failed }

class LoadingAppState extends Equatable {
  final LoadingAppStatus status;
  final String loadingElement;
  final bool error;
  const LoadingAppState(
      {required this.status, this.loadingElement = "", this.error = false});
  @override
  List<Object?> get props => [status, loadingElement, error];

  LoadingAppState copyWith(
      {LoadingAppStatus? status, String? loadingElement, bool? error}) {
    return LoadingAppState(
        status: status ?? this.status,
        loadingElement: loadingElement ?? this.loadingElement,
        error: error ?? this.error);
  }
}
