import 'package:flutter/material.dart';
import 'package:untitled/feed/domain/story_entity.dart';
import 'package:untitled/feed/presentation/stories/HorizotalStoriesList.dart';

import '../domain/load_stories_usecase.dart';
import 'appBar/app_bar_widget.dart';
import 'feed_controller.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late FeedController controller;

  @override
  void initState() {
    super.initState();

    LoadStoriesUseCase usecase = LoadStoriesUseCase();
    controller = FeedController(useCase: usecase);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 85,
            child: FutureBuilder<List<StoryEntity>>(
              future: controller.loadStories(),
              builder: (context, snapshot){
                if (!snapshot.hasData){
                  return const CircularProgressIndicator();
                }
                List<StoryEntity> storyEntityList = snapshot.data!;
                return HorizotalStoriesList(storyEntityList: storyEntityList);
              }
            )

          ),
          const Text('data'),
        ],
      ),
    );
  }
}
