import 'package:flutter/material.dart';
import 'package:untitled/feed/presentation/nicknames/abstract_nickname.dart';

class InactiveNickName extends AbstractNickName{
  InactiveNickName({required super.name, required super.size});

  @override
  TextStyle buildTextStyle() {
    return TextStyle(color: Colors.grey, fontSize: size);
  }

}