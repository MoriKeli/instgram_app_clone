import 'package:flutter/material.dart';


class TrayIcon extends StatelessWidget {
  const TrayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 4.0),
          child: InkWell(
            onTap: () {},
            child: Icon(Icons.favorite, color: Colors.red, size: 22.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: InkWell(
            onTap: () {},
            child: ImageIcon(
              AssetImage('assets/images/icons/comment-icon.png'),
              size: 28.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: InkWell(
            onTap: () {},
            child: ImageIcon(
              AssetImage('assets/images/icons/message-icon.png'),
              size: 22.0,
            ),
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_outline,
            size: 22.0,
          ),
        ),
      ],
    );
  }
}