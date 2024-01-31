import 'package:flutter/material.dart';


class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    required this.chatBubbleColor,
    this.chatBubbleAlignment = Alignment.centerRight,
  });

  final String message;
  final Color chatBubbleColor;
  final AlignmentGeometry chatBubbleAlignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: chatBubbleAlignment,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 20.0,
          maxWidth: MediaQuery.of(context).size.width * .5
        ),
        child: Card(
          color: chatBubbleColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              message,
              style: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
