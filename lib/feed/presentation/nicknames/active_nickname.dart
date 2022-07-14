import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:untitled/feed/presentation/nicknames/abstract_nickname.dart';

class ActiveNickName extends AbstractNickName{
  ActiveNickName({required super.name, required super.size});

  @override
  TextStyle buildTextStyle() {
    return TextStyle(
        color: Colors.black, fontSize: size, fontWeight: FontWeight.bold
    );
  }
}