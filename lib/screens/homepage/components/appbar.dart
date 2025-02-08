import 'package:flutter/material.dart';
import 'package:instagram_clone/common/message_icon.dart';
import 'package:instagram_clone/constants/colors.dart';


AppBar appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Image(
      image: AssetImage("assets/images/logo-black-bg.jpg"),
      height: 50.0,
    ),
    backgroundColor: kBackgroundColor,
    actions: [
      NotificationsIcon(),
      MessageIcon(),
    ],
  );
}

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      child: Stack(
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
      ),
    );
  }
}
