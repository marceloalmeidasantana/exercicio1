import 'package:flutter/material.dart';
import 'package:untitled/feed/presentation/stories/abstract_avatar.dart';

class ActiveAvatar extends AbstractAvatar{
  ActiveAvatar(String photo): super(photo);
  @override
  Widget build() {
        return  Padding(
          padding: const EdgeInsets.all(1.5),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(photo),
            ),
          ),
        );
  }

  @override
  BoxDecoration buildBorder() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.red,
          Colors.yellow[200]!,
          Colors.purple,
          Colors.red,
        ]
      )
    );
  }
}