import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add_post/new_posts_screen.dart';
import 'package:instagram_clone/screens/homepage/components/widgets/homescreen/bottom_navbar.dart';
import 'package:instagram_clone/screens/homepage/homepage.dart';
import 'package:instagram_clone/screens/profile/profile_screen.dart';
import 'package:instagram_clone/screens/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/homescreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedScreen = 0;

  final List<Widget> _screens = [
    const HomeScreenWidgets(),
    const SearchScreen(),
    const NewPostsScreen(),
    const Center(child: Text('Screen will be updated soon.')),
    const ProfileScreen(),
    
  ];

  void _tappedIcon(int index) {
    setState(() {
      selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedScreen],
      bottomNavigationBar: BottomNavBar(
        screenIndex: selectedScreen,
        tappedIcon: _tappedIcon,
      ),
    );
  }
}