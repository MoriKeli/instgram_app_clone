import 'package:flutter/material.dart';


AppBar messagesScreenAppBar(BuildContext context) {
  return AppBar(
    title: Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .21,
          child: Text(
            'testuser',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Icon(Icons.expand_more),
      ],
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.edit_square)),
    ],
  );
}