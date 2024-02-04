import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class MuteMessagesWidget extends StatefulWidget {
  const MuteMessagesWidget({
    super.key,
  });

  @override
  State<MuteMessagesWidget> createState() => _MuteMessagesWidgetState();
}

class _MuteMessagesWidgetState extends State<MuteMessagesWidget> {
  bool isMutedMessages = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mute messages',
            style: TextStyle(fontSize: 18.0),
          ),
          Switch.adaptive(
            activeColor: kBlueColor,
            value: isMutedMessages,
            onChanged: (value) {
              setState(() {
                isMutedMessages = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
