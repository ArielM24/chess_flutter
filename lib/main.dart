import 'package:chess_flutter/application/router/app_router.dart';
import 'package:chess_flutter/domain/bloc_observer.dart';
import 'package:chess_flutter/application/pages/main_menu/main_menu.dart';
import 'package:chess_flutter/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/pages/main_menu/bloc/main_menu_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainMenuBloc>(
            create: (context) =>
                MainMenuBloc(settingsRepository: SettingsRepository())
                  ..add(MainMenuStarted()))
      ],
      child: MaterialApp.router(
        title: 'Chess Forge',
        routerConfig: AppRouter.router,
      ),
    );
  }
}
