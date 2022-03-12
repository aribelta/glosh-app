import 'package:bigproject/model/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: Text(title),
      backgroundColor: button,
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.filter_list),
        )
      ],
    );
  }

  Size get preferredSize => Size(200, 56);
}
