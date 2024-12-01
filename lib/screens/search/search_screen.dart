import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/search/components/search_screen_body.dart';


class SearchScreen extends StatelessWidget {
  static String routeName = '/search';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchScreenBody(),
    );
  }
}
