import 'package:flutter/material.dart';
import 'package:instagram_clone/models/posts.dart';
import 'package:instagram_clone/models/stories.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/posts_card/card_header.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/posts_card/comments_widget.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/homescreen/instagram_stories.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/posts_card/posts_description_widget.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/posts_card/total_likes_widget.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/posts_card/tray_icon_widget.dart';


class HomepageBody extends StatelessWidget {
  final List<InstagramStories> instagramStories;
  final List<Posts> userFeed;

  const HomepageBody({
    super.key,
    required this.instagramStories,
    required this.userFeed,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Instagram stories
          InstagramStoriesWidget(
            userFeed: userFeed,
            instagramStories: instagramStories,
          ),

          Divider(
            color: Colors.grey[500],
            thickness: 0.5,
          ),

          // Feed
          NewsFeed(userFeed: userFeed)
        ],
      ),
    );
  }
}

class NewsFeed extends StatelessWidget {
  const NewsFeed({
    super.key,
    required this.userFeed,
  });

  final List<Posts> userFeed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        userFeed.length,
        (index) => Column(
          children: [
            PostCardHeader(userFeed: userFeed, currentPostIndex: index),  // card header
            Image.asset(userFeed[index].imageFile),   // posted image file
            TrayIcon(), // this widget has "like", "comment", "message" and "save" icons
            TotalLikesWidget(userFeed: userFeed, currentPostIndex: index),  // displays total likes for the current post
            
            if (userFeed[index].description != '')  // show description if the post has description
              PostDescriptionWidget(userFeed: userFeed, currentPostIndex: index), // displays post description
            
            if (userFeed[index].totalComments != 0)
              CommentsWidget(userFeed: userFeed, currentPostIndex: index),
    
          ],
        ),
      ),
    );
  }
}
