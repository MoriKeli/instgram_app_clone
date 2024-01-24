import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/models/posts.dart';
import 'package:instagram_clone/models/stories.dart';


class InstagramStoriesWidget extends StatelessWidget {
  const InstagramStoriesWidget({
    super.key,
    required this.userFeed,
    required this.instagramStories,
  });

  final List<Posts> userFeed;
  final List<InstagramStories> instagramStories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children:
            // generate a list of all instagram stories related to the current user
            List.generate(
            userFeed.length,
            (index) => SizedBox(
              width: MediaQuery.of(context).size.width * .25,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:
                      // if index is 0, show my stories, else show stories for the people I'm following
                      index == 0
                        ? MyStoriesWidget(
                            instagramStories: instagramStories,
                            currentStoriesIndex: index,
                            isViewed: instagramStories[index].isViewed,
                          )
                        : FollowedUsersStoriesWidget(
                            instagramStories: instagramStories,
                            currentStoriesIndex: index,
                            isViewed: instagramStories[index].isViewed,
                          ),
                  ),
                  Text(
                    instagramStories[index].username,
                    style: TextStyle(
                      fontSize: 13.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// EXTRACTED WIDGETS


// 1. FollowedUsersStoriesWidget - Widget to show IG stories for people I follow
class FollowedUsersStoriesWidget extends StatelessWidget {
  const FollowedUsersStoriesWidget({
    super.key,
    required this.instagramStories,
    required this.currentStoriesIndex,
  });

  final List<InstagramStories> instagramStories;
  final int currentStoriesIndex;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.width * .114,
      backgroundImage: AssetImage('images/gradient.jpg'),
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width * .104,
        backgroundImage:
            AssetImage(instagramStories[currentStoriesIndex].profilePic),
      ),
    );
  }
}


// 2. MyStoriesWidget - Widget to show my IG stories
class MyStoriesWidget extends StatelessWidget {
  const MyStoriesWidget({
    super.key,
    required this.instagramStories,
    required this.currentStoriesIndex,
  });

  final List<InstagramStories> instagramStories;
  final int currentStoriesIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * .114,
          backgroundImage:
              AssetImage('images/gradient.jpg'),
          child: CircleAvatar(
            radius:
                MediaQuery.of(context).size.width * .102,
            backgroundImage: AssetImage(
                instagramStories[currentStoriesIndex].profilePic),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 8,
          child: Container(
            decoration: BoxDecoration(
              color: kBlueColor,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.add, color: kIconColor, size: 18.0),
          ),
        )
      ],
    );
  }
}
