
import 'package:flutter/material.dart';

class InstagramLogoMenu extends StatelessWidget {
  const InstagramLogoMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 8.0),
      child: PopupMenuButton(
        color: Colors.black,
        position: PopupMenuPosition.under,
        itemBuilder: (context) => [
          _createPopupMenuItem('Seguindo', Icons.group_add, () {
            print('Clicou em seguindo');
          }),
          _createPopupMenuItem('Favoritos', Icons.star_border_outlined, () => print('vc clicou em Favoritos'))
        ],
        child: const Image(image: AssetImage('images/logoinstagram.png')),
      ),
    );
  }
}

//Não entendi o context do PopupMenuButton
//Não entendi a function() callback

PopupMenuItem _createPopupMenuItem(
    String name, IconData icon, Function() callback) {
  return PopupMenuItem(
    onTap: callback,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        Icon(
          icon,
          color: Colors.white,
        )
      ],
    ),
  );
}