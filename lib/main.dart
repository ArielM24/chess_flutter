import 'package:chess_flutter/application/pages/forge_page/bloc/forge_bloc.dart';
import 'package:chess_flutter/application/router/app_router.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:chess_flutter/domain/bloc_observer.dart';
import 'package:chess_flutter/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/pages/loading_app_page/bloc/loading_app_bloc.dart';
import 'application/pages/main_menu/bloc/main_menu_bloc.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsRepository settingsRepository = SettingsRepository();
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainMenuBloc>(
            create: (context) =>
                MainMenuBloc(settingsRepository: settingsRepository)
                  ..add(MainMenuStarted())),
        BlocProvider<LoadingAppBloc>(
            create: (context) =>
                LoadingAppBloc(settingsRepository: settingsRepository)),
        BlocProvider(
            create: (context) =>
                ForgeBloc(settingsRespository: settingsRepository)
                  ..add(ForgeStarted()))
      ],
      child: MaterialApp.router(
        title: 'Chess Forge',
        debugShowCheckedModeBanner: false,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        color: AppColors.darkBackground,
      ),
    );
  }
}
