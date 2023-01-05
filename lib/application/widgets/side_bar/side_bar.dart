import 'package:flutter/material.dart';

import 'side_bar_title.dart';

class SideBar extends StatelessWidget {
  final Color? backgroundColor;
  final SideBarTitle sideBarTitle;
  final List<Widget>? tiles;
  const SideBar(
      {Key? key, this.backgroundColor, required this.sideBarTitle, this.tiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: Colors.white))),
      child: Drawer(
        backgroundColor: backgroundColor,
        child: Column(
          children: [
            sideBarTitle,
            const Divider(color: Colors.white),
            if (tiles != null) Column(children: tiles!)
          ],
        ),
      ),
    );
  }
}
