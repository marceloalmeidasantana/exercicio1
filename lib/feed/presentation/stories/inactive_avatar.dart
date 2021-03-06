import 'package:flutter/material.dart';
import 'package:untitled/feed/presentation/stories/abstract_avatar.dart';

class InactiveAvatar extends AbstractAvatar{
  InactiveAvatar(super.photo);

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
    )
    ;
  }

  @override
  BoxDecoration buildBorder() {
    return const BoxDecoration(
      shape: BoxShape.circle,
      border: Border.fromBorderSide(
        BorderSide(color: Color.fromARGB(255, 77, 76, 76)),
      )
    );
  }

}