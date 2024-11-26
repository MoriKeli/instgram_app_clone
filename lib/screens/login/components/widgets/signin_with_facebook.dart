import 'package:flutter/material.dart';


class SignInWithFacebook extends StatelessWidget {
  const SignInWithFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("images/fb-icon.png"),
            height: 20.0,
          ),
          Text(" Continue with "),
          Text(
            "facebook",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            )
          ),
        ],
      ),
    );
  }
}

