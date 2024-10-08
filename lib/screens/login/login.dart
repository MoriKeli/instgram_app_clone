import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/components/login_screen_body.dart';
import 'package:instagram_clone/screens/login/components/login_screen_bottom_navbar.dart';


class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenBody(),
      bottomNavigationBar: LoginScreenBottomNavBar(),
    );
  }
}
