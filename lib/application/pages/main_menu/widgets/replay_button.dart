import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ReplayButton extends StatelessWidget {
  const ReplayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      constraints: const BoxConstraints(minWidth: 350),
      child: GFButton(
          color: AppColors.yellowReplay,
          text: "Replay",
          icon: const Icon(
            Icons.settings_backup_restore_rounded,
            color: Colors.white,
          ),
          type: GFButtonType.solid,
          shape: GFButtonShape.square,
          size: GFSize.LARGE,
          onPressed: () {}),
    );
  }
}
