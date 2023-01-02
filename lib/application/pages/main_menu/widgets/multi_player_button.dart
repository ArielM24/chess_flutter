import 'package:chess_flutter/application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MultiPlayerButton extends StatelessWidget {
  const MultiPlayerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      constraints: const BoxConstraints(minWidth: 350),
      child: GFButton(
          color: AppColors.greenPlayer,
          text: "Multi Player",
          icon: const Icon(
            Icons.person_add,
            color: Colors.white,
          ),
          type: GFButtonType.solid,
          shape: GFButtonShape.square,
          size: GFSize.LARGE,
          onPressed: () {}),
    );
  }
}
