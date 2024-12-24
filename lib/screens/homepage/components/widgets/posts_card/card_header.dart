import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/models/posts.dart';


class PostCardHeader extends StatelessWidget {
  const PostCardHeader({
    super.key,
    required this.userFeed,
    required this.currentPostIndex,
  });

  final List<Posts> userFeed;
  final int currentPostIndex;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 15.0),
      minVerticalPadding: 0.1,
      leading: CircleAvatar(
        radius: MediaQuery.of(context).size.width * .05,
        backgroundImage: AssetImage(userFeed[currentPostIndex].profilePic),
      ),
      title: Row(
        children: [
          Text(
            userFeed[currentPostIndex].username,
            style: TextStyle(fontSize: 14.0),
          ),
          SizedBox(width: 4.0),
          // Verified icon
          Icon(
            Icons.verified,
            color: kVerifiedAccountIcon,
            size: 14.0,
          ),
        ],
      ),
      subtitle: Text(
        userFeed[currentPostIndex].username,
        style: TextStyle(
          color: kTextSecondaryColor,
          fontSize: 13.0,
        ),
      ),
      trailing: ClipRect(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              userFeed[currentPostIndex].dateStamp,
              style: TextStyle(
                color: kTextSecondaryColor,
                fontSize: 13.0,
              ),
              textAlign: TextAlign.end,
            ),
            IconButton(
              padding: EdgeInsets.only(right: 1.0),
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
