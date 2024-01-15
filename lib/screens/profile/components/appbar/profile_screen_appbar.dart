import 'package:flutter/material.dart';
import 'package:instagram_clone/common/message_icon.dart';
import 'package:instagram_clone/screens/profile/components/appbar/settings_bottom_sheet.dart';


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
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Icon(Icons.expand_more),
      ],
    ),
    actions: [
      MessageIcon(),
      IconButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => SettingsBottomSheet(),
        ),
        icon: Icon(Icons.menu),
      ),
    ],
  );
}
