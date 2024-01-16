import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/messages/components/messages_screen_appbar.dart';
import 'package:instagram_clone/screens/messages/components/messages_screen_body.dart';


class MessagesScreen extends StatelessWidget {
  static String routeName = '/messages';
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: messagesScreenAppBar(context),
      body: MessagesScreenBody(),
    );
  }
}
