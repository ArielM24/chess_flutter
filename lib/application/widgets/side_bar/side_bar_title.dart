import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideBarTitle extends StatelessWidget {
  final String backPath;
  final String title;
  final IconData trailingIconData;
  const SideBarTitle(
      {Key? key,
      required this.backPath,
      required this.title,
      required this.trailingIconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: BackButton(
              color: Colors.white,
              onPressed: () => context.go(backPath),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                trailingIconData,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
