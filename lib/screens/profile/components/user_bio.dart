import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/profile/components/widgets/bio/bio_widget.dart';
import 'package:instagram_clone/screens/profile/components/widgets/bio/edit_and_share_profile_btn.dart';
import 'package:instagram_clone/screens/profile/components/widgets/bio/username_widget.dart';


class UserBio extends StatelessWidget {
  const UserBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          UsernameWidget(),   // username
          BioWidget(),  // user bio
          SizedBox(height: 10.0),
          EditandShareProfileBtn(),  // edit profile & share profile
        ],
      ),
    );
  }
}
