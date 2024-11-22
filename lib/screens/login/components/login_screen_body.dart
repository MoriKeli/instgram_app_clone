import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/components/login_form.dart';
import 'package:instagram_clone/screens/login/components/widgets/login_screen_forgot_password_link.dart';
import 'package:instagram_clone/screens/login/components/widgets/login_screen_header.dart';
import 'package:instagram_clone/screens/login/components/widgets/or_divider.dart';
import 'package:instagram_clone/screens/login/components/widgets/signin_with_facebook.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: ListView(
        children: [
          LoginScreenHeader(),  // instgram logo
          LoginForm(),  // login form
          ForgotPasswordLink(),   // forgot password
          ORDivider(),  // divider
          SignInWithFacebook(),   // other signin options
        ],
      ),
    );
  }
}

