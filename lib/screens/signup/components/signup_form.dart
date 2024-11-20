import 'package:flutter/material.dart';
import 'package:instagram_clone/common/form_input_field.dart';
import 'package:instagram_clone/screens/signup/components/widgets/signup_btn.dart';
import 'package:instagram_clone/screens/signup/components/widgets/upload_profile_pic_widget.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _confirmPasswordController = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          UploadProfilePictureWidget(), // widget that allows user to upload profile picture
          SizedBox(height: 10.0),
          // form input fields
          // 1. username
          FormInputField(
            textEditingController: _usernameController,
            hintText: 'Username',
            labelText: 'Username',
            isPasswordField: false,
          ),
          SizedBox(height: 8.0),
          // 2. email
          FormInputField(
            textEditingController: _emailController,
            hintText: 'Email address',
            labelText: 'Email address',
            isPasswordField: false,
          ),
          SizedBox(height: 8.0),
          // 3. password
          FormInputField(
            textEditingController: _passwordController,
            hintText: 'Password',
            labelText: 'Password',
            isPasswordField: true,
          ),
          SizedBox(height: 8.0),
          // 4. confirm password
          FormInputField(
            textEditingController: _confirmPasswordController,
            hintText: 'Confirm password',
            labelText: 'Confirm Password',
            isPasswordField: true,
          ),
          SizedBox(height: 8.0),
          // signup button
          SignupFormButton(),
        ],
      ),
    );
  }
}
