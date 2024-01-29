import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/chats/components/chat_section.dart';
import 'package:instagram_clone/screens/chats/components/widgets/chat_screen/recipient_details_widget.dart';


class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .2),
        RecipientDetailsSectionWidget(), // section of the chat screen that displays recipient's avatar, username and "view profile" button
        SizedBox(height: 8.0),
        ChatsSection(),

        // used a Container() to add margin between the last chat bubble and textfield 
        Container(
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .12),
        )
      ],
    );
  }
}
