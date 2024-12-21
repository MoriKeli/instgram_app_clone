import 'package:flutter/material.dart';


AppBar profileScreenAppBar(context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .21,
          child: Text(
            'testuser',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis
            ),
          ),
        ),
        Icon(Icons.expand_more)
      ],
    ),
    actions: [
      ImageIcon(AssetImage('images/icons/message-icon.png')),
      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    ],
  );
}