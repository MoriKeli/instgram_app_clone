import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/screens/signup/signup.dart';


class LoginScreenBottomNavBar extends StatelessWidget {
  const LoginScreenBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: MediaQuery.of(context).size.height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ",
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, SignupScreen.routeName),
            child: Text(
              "Sign up",
              style: TextStyle(
                color: kBlueColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
