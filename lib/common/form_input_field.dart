import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class FormInputField extends StatelessWidget {
  const FormInputField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.labelText,
    required this.isPasswordField,
  });

  final String hintText, labelText;
  final bool isPasswordField;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.0,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 12.0),
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 14.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          fillColor: Colors.grey[900],
          filled: true,
          focusColor: kBlueColor,
        ),
        obscureText: isPasswordField,
      ),
    );
  }
}
