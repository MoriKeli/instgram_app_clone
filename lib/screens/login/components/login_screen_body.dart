import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/components/widgets/login_screen_btn.dart';
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
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
        LoginScreenHeader(),
        Form(
          key: _formKey,
          child: Column(
            children: [
              usernameFormField(),
              const SizedBox(height: 12.0),
              passwordFormField(),
              const SizedBox(height: 12.0),
              LoginButton(),
            ],
          ),
        ),
        ForgotPasswordLink(),
        ORDivider(),
        SignInWithFacebook(),
      ]),
    );
  }

  // password form field
  Container passwordFormField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(fontSize: 15.0),
          labelText: "Password",
          labelStyle: TextStyle(fontSize: 14.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          fillColor: Colors.grey[900],
          filled: true,
        ),
        obscureText: true,
      ),
    );
  }

  // username form field
  Container usernameFormField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Mobile number, username or email",
          hintStyle: TextStyle(fontSize: 15.0),
          labelText: "Mobile number, username or email",
          labelStyle: TextStyle(fontSize: 14.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          fillColor: Colors.grey[900],
          filled: true,
        ),
        // style: TextStyle(fontSize: 10.0),
      ),
    );
  }
}
