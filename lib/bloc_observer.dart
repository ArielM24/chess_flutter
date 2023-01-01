import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(bloc, change) {
    super.onChange(bloc, change);
    debugPrint("$bloc: $change");
  }
}
