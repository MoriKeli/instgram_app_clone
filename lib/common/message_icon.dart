import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/messages/messages_screen.dart';


class MessageIcon extends StatelessWidget {
  const MessageIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => Navigator.pushNamed(context, MessagesScreen.routeName),
            icon: ImageIcon(
              AssetImage('assets/images/icons/message-icon.png'),
              size: 28.0,
            ),
          ),
          Positioned(
            top: 0,
            right: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(5.0),
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}