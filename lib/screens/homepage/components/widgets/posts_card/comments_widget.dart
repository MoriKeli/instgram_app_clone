import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/models/posts.dart';


class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    super.key,
    required this.userFeed,
    required this.currentPostIndex,
  });

  final List<Posts> userFeed;
  final int currentPostIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Text(
            'View all ${userFeed[currentPostIndex].totalComments} comments',
            style: TextStyle(
              color: kTextSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
