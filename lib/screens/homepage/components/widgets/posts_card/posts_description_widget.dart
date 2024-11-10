import 'package:flutter/material.dart';
import 'package:instagram_clone/models/posts.dart';


class PostDescriptionWidget extends StatelessWidget {
  const PostDescriptionWidget({
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
      child: Wrap(
        children: [
          Row(
            children: [
              Text(
                userFeed[currentPostIndex].username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 7.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  userFeed[currentPostIndex].description,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}