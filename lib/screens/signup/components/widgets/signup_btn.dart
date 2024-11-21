import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/screens/login/login.dart';


class SignupFormButton extends StatelessWidget {
  const SignupFormButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () =>
            Navigator.popAndPushNamed(context, LoginScreen.routeName),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kBlueColor),
          shape: WidgetStateProperty.all(
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(2.0))),
        ),
        child: Text(
          'signup',
          style: TextStyle(color: kTextColor),
        ),
      ),
    );
  }
}
