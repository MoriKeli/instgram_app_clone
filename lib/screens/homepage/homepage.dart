import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/homepage/components/appbar.dart';
import 'package:instagram_clone/screens/homepage/components/homepage_body.dart';


class HomeScreenWidgets extends StatefulWidget {
  const HomeScreenWidgets({super.key});

  @override
  State<HomeScreenWidgets> createState() => _HomeScreenWidgetsState();
}

class _HomeScreenWidgetsState extends State<HomeScreenWidgets> {
  List<String> profileImages = [
    "images/dps/boy-1.jpg",
    "images/dps/boy-2.jpg",
    "images/dps/boy-3.jpg",
    "images/dps/boy-4.jpg",
    "images/dps/girl-1.jpg",
    "images/dps/girl-2.jpg",
    "images/dps/girl-3.jpg",
  ];

  List<String> userPosts = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/13.jpg",
    "images/gallery-8.jpg",
  ];

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
