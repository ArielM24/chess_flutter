import 'package:chess_flutter/application/pages/error/error_page.dart';
import 'package:chess_flutter/application/pages/forge_page/forge_page.dart';
import 'package:chess_flutter/application/pages/loading_app_page/loading_app_page.dart';
import 'package:chess_flutter/application/pages/main_menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: LoadingAppPage.path, routes: [
    GoRoute(
        path: MainMenuPage.path,
        pageBuilder: (context, state) {
          return _customTransitionPage(state, const MainMenuPage());
        }),
    GoRoute(
      path: ForgePage.path,
      pageBuilder: (context, state) {
        return _customTransitionPage(state, const ForgePage());
      },
    ),
    GoRoute(
      path: LoadingAppPage.path,
      pageBuilder: (context, state) {
        return _customTransitionPage(state, const LoadingAppPage());
      },
    ),
    GoRoute(
      path: ErrorPage.path,
      pageBuilder: (context, state) {
        return _customTransitionPage(state, const ErrorPage());
      },
    ),
  ]);

  static Page _customTransitionPage(GoRouterState state, Widget child) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Change the opacity of the screen using a Curve based on the the animation's
        // value
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }
}
