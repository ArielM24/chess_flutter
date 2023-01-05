import 'package:chess_flutter/application/pages/forge_page/bloc/forge_bloc.dart';
import 'package:chess_flutter/application/pages/forge_page/widgets/forge_side_bar.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgePage extends StatelessWidget {
  static const String path = "/forge";
  const ForgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgeBloc, ForgeState>(
      builder: (context, state) {
        Color? backgroundColor = state.useDarkTheme
            ? AppColors.darkBackground
            : AppColors.lightBackground;
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Row(
            children: const [
              ForgeSideBar(),
            ],
          ),
        );
      },
    );
  }
}
