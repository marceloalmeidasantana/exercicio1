import 'package:flutter/cupertino.dart';
import 'package:untitled/feed/presentation/stories/story_widget.dart';

import '../../domain/story_entity.dart';
import '../nicknames/active_nickname.dart';
import '../nicknames/inactive_nickname.dart';
import 'active_avatar.dart';
import 'inactive_avatar.dart';


class HorizotalStoriesList extends StatefulWidget {
  final List<StoryEntity> storyEntityList;
  const HorizotalStoriesList({Key? key, required this.storyEntityList}) : super(key: key);

  @override
  State<HorizotalStoriesList> createState() => _HorizotalStoriesListState();
}

class _HorizotalStoriesListState extends State<HorizotalStoriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
        itemCount: widget.storyEntityList.length,
        separatorBuilder: (_,index) => const Padding(padding: EdgeInsets.only(left: 7)),
        itemBuilder: (context, index){
          StoryEntity eachStoryEntity = widget.storyEntityList[index];
          return _buildStoryWidget(eachStoryEntity);
        }
    );

  }

  StoryWidget _buildStoryWidget(StoryEntity story){
    return StoryWidget(
      avatar: story.seen
          ? InactiveAvatar(story.profilePhoto)
          : ActiveAvatar(story.profilePhoto),
      name: story.seen
          ? InactiveNickName(size: 12, name: story.username)
          : ActiveNickName(size: 12, name: story.username),
    );
  }
}
