import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/homepage/components/appbar.dart';
import 'package:instagram_clone/screens/homepage/components/homepage_body.dart';


class HomeScreenWidgets extends StatefulWidget {
  const HomeScreenWidgets({super.key});

  @override
  State<HomeScreenWidgets> createState() => _HomeScreenWidgetsState();
}

class _HomeScreenWidgetsState extends State<HomeScreenWidgets> {
  //function to refresh page
  Future<void> refreshPage() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: RefreshIndicator(
        onRefresh: refreshPage,
        child: HomepageBody(
          profileImages: profileImages,
          userPosts: userPosts,
        ),
      ),
    );
  }
}
