import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/chats/details_screen.dart';


AppBar chatScreenAppBar(BuildContext context) {
  return AppBar(
    elevation: 1.0,
    leadingWidth: 20.0,
    shadowColor: Colors.white,
    title: Row(
      children: [
        CircleAvatar(
          radius: 16.0,
          backgroundImage: AssetImage('images/dps/brenda-jones.jpg'),
        ),
        SizedBox(width: 12.0),
        SizedBox(
          width: 120.0,
          child: Text(
            'iambrendajones',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.phone_outlined)),
      IconButton(onPressed: () {}, icon: Icon(Icons.video_call_outlined)),
      IconButton(onPressed: () => Navigator.pushReplacementNamed(context, DetailsScreen.routeName), icon: Icon(Icons.info_outline))
    ],
  );
}