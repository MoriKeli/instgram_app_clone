import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class EditandShareProfileBtn extends StatelessWidget {
  const EditandShareProfileBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EditProfileBtn(), // button to edit profile
        SizedBox(width: 12.0),
        ShareProfileBtn(),  // button to share profile
        SizedBox(width: 12.0),
        SuggestedUserBtn(), // button to show suggested users
      ],
    );
  }
}

class SuggestedUserBtn extends StatelessWidget {
  const SuggestedUserBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: MediaQuery.of(context).size.height * .048,
      width: MediaQuery.of(context).size.width * .08,
      child: IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kSecondaryColor),
          shape: WidgetStatePropertyAll(
            BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2.0)
            )
          ),
        ),
        onPressed: () {},
        icon: Icon(Icons.expand_more, size: 18.0),
      ),
    );
  }
}

class ShareProfileBtn extends StatelessWidget {
  const ShareProfileBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: MediaQuery.of(context).size.height * .048,
      width: MediaQuery.of(context).size.width * .38,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kSecondaryColor),
          shape: WidgetStatePropertyAll(
            BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2.0)
            )
          ),
        ),
        onPressed: () {},
        child: Text(
          'Share profile',
          style: TextStyle(fontSize: 12.0, color: kTextColor),
        ),
      ),
    );
  }
}

class EditProfileBtn extends StatelessWidget {
  const EditProfileBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: MediaQuery.of(context).size.height * .048,
      width: MediaQuery.of(context).size.width * .38,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kSecondaryColor),
          shape: WidgetStatePropertyAll(
            BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2.0)
            )
          ),
        ),
        onPressed: () {},
        child: Text(
          'Edit profile',
          style: TextStyle(fontSize: 12.0, color: kTextColor),
        ),
      ),
    );
  }
}

