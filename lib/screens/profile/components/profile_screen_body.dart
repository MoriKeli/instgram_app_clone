import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/profile/components/user_bio.dart';
import 'package:instagram_clone/screens/profile/components/widgets/profile_screen_header.dart';


class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProfileScreenHeader(),
        UserBio(),
      ],
    );
  }
}
