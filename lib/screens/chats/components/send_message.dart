import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/screens/chats/components/widgets/chat_screen/message_text_field_widget.dart';
import 'package:instagram_clone/screens/chats/components/widgets/chat_screen/trailing_tray_icon_widget.dart';


class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: kSearchBarColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          MessageTextField(),   // text field to type text message
          TrailingTrayIcon(),   // tray icon for "microphone", "image" and "emojis" icons
        ],
      ),
    );
  }
}
