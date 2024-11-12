import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


AppBar appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Image(
      image: AssetImage("images/logo-black-bg.jpg"),
      height: 50.0,
    ),
    backgroundColor: kBackgroundColor,
    actions: [
      NotificationsIcon(),
      MessagesIcon(),
    ],
  );
}

class MessagesIcon extends StatelessWidget {
  const MessagesIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ImageIcon(
            AssetImage('images/icons/message-icon.png'),
            size: 28.0,
          ),
          Positioned(
            bottom: 12,
            left: 16,
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

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Icons.favorite_border, size: 30.0),
          onPressed: () {},
        ),
        Positioned(
          top: 12,
          right: 9,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.circle, color: Colors.red, size: 9.0),
          ),
        )
      ],
    );
  }
}
