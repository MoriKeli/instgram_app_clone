import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/models/messages/messages.dart';
import 'package:instagram_clone/screens/chats/chat_screen.dart';

class AllMessages extends StatelessWidget {
  const AllMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        inboxMessages.length,
        (index) => ListTile(
          onTap: () => Navigator.pushReplacementNamed(context, ChatScreen.routeName),
          minLeadingWidth: 1.0,
          leading: RecipientProfilePicture(currentIndex: index),   // profile picture of the recipient
          title: RecipientUsername(currentUser: index),  // username of the recipient
          subtitle: Message(currentIndex: index),   // text message
          
          // if the message is read, show a blue badge otherwise don't show (the icon color blends with the background color)
          trailing: inboxMessages[index].isRead == false
              ? Icon(Icons.circle, color: kBlueColor, size: 8.0)
              : Icon(Icons.circle, color: kBackgroundColor, size: 8.0),
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 84.0,
          child: Text(
            inboxMessages[currentIndex].message,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: inboxMessages[currentIndex].isRead == false
                  ? kTextColor
                  : kTextSecondaryColor,
              fontSize: 13.0,
              fontWeight: inboxMessages[currentIndex].isRead == false
                  ? FontWeight.bold
                  : FontWeight.normal, // show bold text if the message is unread
            ),
          ),
        ),
        SizedBox(width: 5.0),
        Icon(
          Icons.circle,
          size: 4.0,
          color: inboxMessages[currentIndex].isRead == false ? kTextColor : kTextSecondaryColor,
        ),
        SizedBox(width: 5.0),
        Text(
          inboxMessages[currentIndex].timeStamp,
          style: TextStyle(
            color: inboxMessages[currentIndex].isRead == false
                ? kTextColor
                : kTextSecondaryColor,
            fontSize: 13.0,
            fontWeight: inboxMessages[currentIndex].isRead == false
                ? FontWeight.bold
                : FontWeight.normal, // show bold text if the message is unread
          ),
        ),
      ],
    );
  }
}

class RecipientUsername extends StatelessWidget {
  const RecipientUsername({
    super.key,
    required this.currentUser,
  });

  final int currentUser;

  @override
  Widget build(BuildContext context) {
    return Text(
      inboxMessages[currentUser].username,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: inboxMessages[currentUser].isRead == false
            ? FontWeight.bold
            : FontWeight.normal, // show bold text if the message is unread
      ),
    );
  }
}

class RecipientProfilePicture extends StatelessWidget {
  const RecipientProfilePicture({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .12,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.height * .1,
        backgroundImage: AssetImage(inboxMessages[currentIndex].profilePic),
      ),
    );
  }
}
