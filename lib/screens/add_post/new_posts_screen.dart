import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add_post/components/gallery_header_and_tray_icon.dart';
import 'package:instagram_clone/screens/add_post/components/new_posts_screen_tabs.dart';
import 'package:instagram_clone/screens/add_post/components/tab_contents.dart';


class NewPostsScreen extends StatefulWidget {
  static String routeName = '/create-post-or-reel';
  const NewPostsScreen({super.key});

  @override
  State<NewPostsScreen> createState() => _NewPostsScreenState();
}

class _NewPostsScreenState extends State<NewPostsScreen>
    with SingleTickerProviderStateMixin {
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
    return SafeArea(
      child: ListView(
        children: [
          NewPostScreenTabs(tabController: _tabController),
          GalleryHeaderAndTrayIcon(),
          NewPostScreenTabContents(tabController: _tabController),

        ],
      ),
    );
  }
}
