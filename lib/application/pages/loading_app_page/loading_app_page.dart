import 'package:chess_flutter/application/pages/main_menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';

import 'bloc/loading_app_bloc.dart';

class LoadingAppPage extends StatelessWidget {
  static String path = "/";
  const LoadingAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoadingAppBloc, LoadingAppState>(
        listener: (context, state) {
          if (state.status == LoadingAppStatus.complete) {
            context.go(MainMenuPage.path);
          }
          state.loadingElement;
        },
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const GFLoader(
            type: GFLoaderType.circle,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<LoadingAppBloc, LoadingAppState>(
              builder: (context, state) {
                return Text(
                    "${state.error ? "Error" : ""} Loading ${state.loadingElement}");
              },
            ),
          )
        ]),
      ),
    );
  }
}
