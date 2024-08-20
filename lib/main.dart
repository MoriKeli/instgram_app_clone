import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/screens/homepage.dart';
import 'package:instagram_clone/screens/login.dart';

void main() {
  runApp(const InstagramAppClone());
}

class InstagramAppClone extends StatelessWidget {
  const InstagramAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const Homepage(),
      },
    );
  }
}
