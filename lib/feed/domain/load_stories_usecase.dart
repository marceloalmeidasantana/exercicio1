import 'package:untitled/feed/domain/story_entity.dart';

class LoadStoriesUseCase{
  Future<List<StoryEntity>> execute() async {
    return [
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: true),
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: false),
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: true),
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: false),
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: false),
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: false),
      StoryEntity(
          username: 'Marcelo',
          profilePhoto: 'images/logoinstagram.png',
          seen: false),
    ];
  }
}
