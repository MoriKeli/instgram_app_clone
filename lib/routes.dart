import 'package:flutter/material.dart';
import 'package:instagram_clone/common/homescreen.dart';
import 'package:instagram_clone/screens/login/login.dart';
import 'package:instagram_clone/screens/signup/signup.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};