import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class MessageTextField extends StatefulWidget {
  const MessageTextField({
    super.key,
  });

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Container(
        padding: EdgeInsets.all(2.0),
        child: TextField(
          controller: _textController,
          cursorColor: kBlueColor,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 12.0),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Message...',
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
            ),
          ),
        ),
      ),
    );
  }
}
