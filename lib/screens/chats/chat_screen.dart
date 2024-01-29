import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/chats/components/appbar.dart';
import 'package:instagram_clone/screens/chats/components/chatscreen_body.dart';
import 'package:instagram_clone/screens/chats/components/send_message.dart';


class ChatScreen extends StatefulWidget {
  static String routeName = '/chat-screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatScreenAppBar(context),
      body: ChatScreenBody(),
      bottomSheet: SendMessageTextField(),
    );
  }
}
