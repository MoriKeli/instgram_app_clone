import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/signup/components/signup_form.dart';


class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/logo-black-bg.jpg',
              height: MediaQuery.of(context).size.height * .12,
            ),
            SizedBox(height: 5.0),
            SignupForm(),   // signup form
          ],
        ),
      ),
    );
  }
}
