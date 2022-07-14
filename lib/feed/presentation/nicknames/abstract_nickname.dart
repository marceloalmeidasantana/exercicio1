import 'package:flutter/material.dart';

abstract class AbstractNickName{
  String name;
  double size;
  AbstractNickName({required this.name, required this.size});

  Widget createNickName () {
    return Text(name, style: buildTextStyle());
  }

  TextStyle buildTextStyle();
}
