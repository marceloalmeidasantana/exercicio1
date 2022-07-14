import 'package:untitled/feed/domain/load_stories_usecase.dart';
import 'package:untitled/feed/domain/story_entity.dart';

class FeedController{
  LoadStoriesUseCase useCase;

  FeedController({required this.useCase});

  Future<List<StoryEntity>> loadStories() async{
    return await useCase.execute();
  }
}