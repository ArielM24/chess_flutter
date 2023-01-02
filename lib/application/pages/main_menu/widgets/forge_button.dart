import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ForgeButton extends StatelessWidget {
  const ForgeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      constraints: const BoxConstraints(minWidth: 350),
      child: GFButton(
          color: AppColors.redForge,
          text: "Forge",
          icon: const Icon(
            Icons.build,
            color: Colors.white,
          ),
          type: GFButtonType.solid,
          shape: GFButtonShape.square,
          size: GFSize.LARGE,
          onPressed: () {}),
    );
  }
}
