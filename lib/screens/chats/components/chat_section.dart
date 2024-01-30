import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/models/messages/chats.dart';
import 'package:instagram_clone/screens/chats/components/widgets/chat_screen/chat_bubble.dart';

class ChatsSection extends StatelessWidget {
  const ChatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        chatMessages.length,
        (index) => Column(
          children: [
            SizedBox(height: 16.0),   // add space at the top of each time stamp
            // time stamp
            Text(
              chatMessages[index].dateStamp,
              style: TextStyle(
                color: kTextSecondaryColor,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.0),    // add space between time stamp and chat bubble
            // chat bubbles

            chatMessages[index].isSender == true
            ? ChatBubble(message: chatMessages[index].message, chatBubbleColor: Colors.indigo.shade600)   // sent message chat bubble
            // recieved message chat bubble
            : ChatBubble(chatBubbleAlignment: Alignment.centerLeft, message: chatMessages[index].message, chatBubbleColor: kSecondaryColor),

          ],
        ),
      ),
    );
  }
}
