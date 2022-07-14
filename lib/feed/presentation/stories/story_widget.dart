import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/feed/presentation/nicknames/abstract_nickname.dart';
import 'package:untitled/feed/presentation/stories/abstract_avatar.dart';

class StoryWidget extends StatefulWidget {
  final AbstractAvatar avatar;
  final AbstractNickName name;
  const StoryWidget({Key? key, required this.avatar, required this.name}) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.avatar.create(),
        widget.name.createNickName(),
      ],
    );
  }
}
