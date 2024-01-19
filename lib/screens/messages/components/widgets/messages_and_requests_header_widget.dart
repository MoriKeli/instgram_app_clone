import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class MessagesSectionAndRequestHeaderWidget extends StatelessWidget {
  const MessagesSectionAndRequestHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Messages',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Requests',
              style: TextStyle(color: kBlueColor),
            ),
          ),
        ],
      ),
    );
  }
}
