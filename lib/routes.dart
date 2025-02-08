import 'package:flutter/material.dart';
import 'package:instagram_clone/common/homescreen.dart';
import 'package:instagram_clone/screens/add_post/new_posts_screen.dart';
import 'package:instagram_clone/screens/chats/chat_screen.dart';
import 'package:instagram_clone/screens/chats/details_screen.dart';
import 'package:instagram_clone/screens/login/login.dart';
import 'package:instagram_clone/screens/messages/messages_screen.dart';
import 'package:instagram_clone/screens/profile/profile_screen.dart';
import 'package:instagram_clone/screens/search/search_screen.dart';
import 'package:instagram_clone/screens/signup/signup.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MessagesScreen.routeName: (context) => MessagesScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  NewPostsScreen.routeName: (context) => NewPostsScreen(),

};