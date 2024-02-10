import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget {
  static mainAppBar() {
    return AppBar(
      title: Image.asset(
        "assets/logo.png",
        width: 45.w,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            const AssetImage("assets/bell.png"),
            size: 8.w,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            const AssetImage("assets/chat.png"),
            size: 7.w,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            const AssetImage("assets/menu.png"),
            size: 8.w,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
