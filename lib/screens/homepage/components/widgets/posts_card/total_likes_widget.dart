import 'package:flutter/material.dart';
import 'package:instagram_clone/models/posts.dart';


class TotalLikesWidget extends StatelessWidget {
  const TotalLikesWidget({
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
            '${userFeed[currentPostIndex].totalLikes} likes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}