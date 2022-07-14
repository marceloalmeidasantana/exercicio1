import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'instagram_logo_menu.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);



  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: InstagramLogoMenu(),
      leadingWidth: 300,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline)),
      ],
    );


    }
  }


