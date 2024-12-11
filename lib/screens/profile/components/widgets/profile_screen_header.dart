import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/profile/components/widgets/header/user_profile_pic_widget.dart';
import 'package:instagram_clone/screens/profile/components/widgets/header/user_stats_widget.dart';

class ProfileScreenHeader extends StatelessWidget {
  const ProfileScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserProfilePictureWidget(), // user avatar
          UserStatsWidget(), // total posts, followers and following
        ],
      ),
    );
  }
}
