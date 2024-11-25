import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
          padding: WidgetStateProperty.all(const EdgeInsets.all(10.0)),
          shape: WidgetStateProperty.all(BeveledRectangleBorder(borderRadius: BorderRadius.circular(2.0))),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/homescreen');
        },
        child: const Text("login", style: TextStyle(fontSize: 16.0, color: kTextColor)),
      ),
    );
  }
}

