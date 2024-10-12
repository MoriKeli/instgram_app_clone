import 'package:flutter/material.dart';


class ForgotPasswordLink extends StatelessWidget {
  const ForgotPasswordLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0, right: 10.0, bottom: 55.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Forgot password?",
            style: TextStyle(
              color: Colors.blue,
              // decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
