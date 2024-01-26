import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class NewPostScreenTabs extends StatelessWidget {
  const NewPostScreenTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      labelColor: kTextColor,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: kTextSecondaryColor,
      tabs: [
        Tab(text: 'POST'),
        Tab(text: 'STORY'),
        Tab(text: 'REELS'),
      ],
    );
  }
}