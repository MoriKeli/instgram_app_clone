import 'package:flutter/material.dart';
import 'package:instagram_clone/common/homescreen.dart';
import 'package:instagram_clone/screens/login.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};