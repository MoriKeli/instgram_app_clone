import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


AppBar appBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: const Icon(Icons.camera_alt_outlined, size: 30.0),
    ),
    leadingWidth: 27.0,
    title: const Image(
      image: AssetImage("images/logo-black-bg.jpg"),
      height: 50.0,
      // fit: BoxFit.contain,
    ),
    backgroundColor: kBackgroundColor,
    actions: [
      IconButton(
        icon: const Icon(Icons.favorite_border, size: 30.0),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.send, size: 30.0),
        onPressed: () {},
      ),
    ],
  );
}
