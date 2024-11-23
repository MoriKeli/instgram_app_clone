import 'package:flutter/material.dart';
import 'package:instagram_clone/common/form_input_field.dart';
import 'package:instagram_clone/screens/login/components/widgets/login_screen_btn.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>(); 
  final TextEditingController _usernameController = TextEditingController(), _passwordController = TextEditingController();
      
  
  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FormInputField(
            textEditingController: _usernameController,
            hintText: 'Mobile no., username or email',
            labelText: 'Enter your mobile no., username or email',
            isPasswordField: false,
          ),
          SizedBox(height: 8.0),
          FormInputField(
            textEditingController: _usernameController,
            hintText: 'Password',
            labelText: 'Enter your password',
            isPasswordField: true,
          ),
          SizedBox(height: 8.0),
          LoginButton(),
        ],
      ),
    );
  }
}
