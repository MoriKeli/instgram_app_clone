import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


AppBar appBar() {
  return AppBar(
    leading: const Icon(Icons.camera_alt_outlined, color: Colors.black, size: 30.0),
    title: const Image(
      image: AssetImage("images/logo.png"),
      height: 38.0,
      // fit: BoxFit.contain,
    ),
    backgroundColor: kBackgroundColor,
    actions: [
      IconButton(
        icon: const Icon(Icons.favorite_border, color: Colors.black, size: 30.0),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.send, color: Colors.black, size: 30.0),
        onPressed: () {},
      ),
    ],
  );
}

