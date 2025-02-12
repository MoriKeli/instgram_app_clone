import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';

class UserProfilePictureWidget extends StatelessWidget {
  const UserProfilePictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      CircleAvatar(
        radius: MediaQuery.of(context).size.width * .12,
        backgroundImage: AssetImage('assets/images/dps/testuser.jpg'),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * .1,
        left: MediaQuery.of(context).size.width * .14,
        child: Container(
          height: 20.0,
          decoration: BoxDecoration(
            color: kBlueColor,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(2.0),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(Icons.add, size: 16.0),
          ),
        ),
      )
    ]);
  }
}
