import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/profile/components/profile_screen_body.dart';
import 'package:instagram_clone/screens/profile/components/appbar/profile_screen_appbar.dart';


class ProfileScreen extends StatefulWidget {
  static String routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileScreenAppBar(context),
      body: ProfileScreenBody(),
    );
  }
}
