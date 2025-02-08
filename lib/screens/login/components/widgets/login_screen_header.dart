import 'package:flutter/material.dart';

class LoginScreenHeader extends StatelessWidget {
  const LoginScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 80.0, bottom: 50.0),
      child: const Image(
        image: AssetImage("assets/images/logo-black-bg.jpg"),
        height: 70.0,
      ),
    );
  }
}
