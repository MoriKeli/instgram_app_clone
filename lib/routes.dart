import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/homepage.dart';
import 'package:instagram_clone/screens/login.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  Homepage.routeName: (context) => Homepage(),
};