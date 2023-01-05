import 'package:chess_flutter/application/pages/main_menu/main_menu.dart';
import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:chess_flutter/application/widgets/side_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgeSideBar extends StatelessWidget {
  const ForgeSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.redForge,
      child: Column(
        children: const [
          SideBarTitle(
              backPath: MainMenuPage.path,
              title: "Forge",
              trailingIconData: Icons.build),
          Divider(color: Colors.white),
        ],
      ),
    );
  }
}
