import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/models/user_profile/my_posts.dart';
import 'package:instagram_clone/models/user_profile/my_reels.dart';
import 'package:instagram_clone/models/user_profile/tagged_posts.dart';
import 'package:instagram_clone/screens/profile/components/user_album.dart';
import 'package:instagram_clone/screens/profile/components/user_bio.dart';
import 'package:instagram_clone/screens/profile/components/widgets/profile_screen_header.dart';
import 'package:instagram_clone/screens/profile/components/widgets/tabs/all_posts_widget.dart';
import 'package:instagram_clone/screens/profile/components/widgets/tabs/tagged_posts.dart';
import 'package:instagram_clone/screens/profile/components/widgets/tabs/user_reels_widget.dart';


class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileScreenHeader(),
          UserBio(),
          SizedBox(height: 15.0),
          UserAlbums(), // album containing user's instagram stories
          SizedBox(height: 16.0),
          ProfileScreenTabs(tabController: _tabController), // tabs
          TabsContent(tabController: _tabController), // content for each tab - posts, reels & tagged
        ],
      ),
    );
  }
}


class TabsContent extends StatelessWidget {
  const TabsContent({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
      // if array is empty set the height to 200.0 otherwise calculate max height
      myPosts.isEmpty ? 200.0 : (myPosts.length * (MediaQuery.of(context).size.height * .18  + 4.0) / 3),  // max height = (no. of images in the array * height of each image + margins) / 3 columns
      child: TabBarView(
        controller: _tabController,
        children: [
          myPosts.isEmpty ? Center(child: Text('No post')) : AllPostsWidget(),   // if the user has not posted anything display 'No post' otherwise display their post(s)
          myReels.isEmpty ? Center(child: Text('No reel')) : UserReelsWidget(),
          taggedPosts.isEmpty ? Center(child: Text('No tagged post')) : TaggedPostsWidget(),

        ],
      ),
    );
  }
}


class ProfileScreenTabs extends StatelessWidget {
  const ProfileScreenTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        Tab(icon: Icon(Icons.grid_on)),
        Tab(icon: ImageIcon(AssetImage('images/icons/reels-icon.png'))),
        Tab(icon: Icon(Icons.person_pin_outlined)),
      ],
    );
  }
}

