import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user_profile/my_posts.dart';


class AllPostsWidget extends StatelessWidget {
  const AllPostsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        children: List.generate(
          myPosts.length,
          (index) => Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
                child: Image.asset(
                  myPosts[index].imagePath,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * .18,   // height of each image (screen height x 0.18)
                  width: MediaQuery.of(context).size.width * .32,   // width of each image (screen width x 0.32)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
