import 'package:chess_flutter/application/pages/main_menu/main_menu.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:chess_flutter/application/widgets/side_bar/side_bar.dart';
import 'package:chess_flutter/application/widgets/side_bar/side_bar_title.dart';
import 'package:flutter/material.dart';

class ForgeSideBar extends StatelessWidget {
  const ForgeSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SideBar(
      backgroundColor: AppColors.redForge,
      sideBarTitle: SideBarTitle(
          backPath: MainMenuPage.path,
          title: "Forge",
          trailingIconData: Icons.build),
    );
  }
}
