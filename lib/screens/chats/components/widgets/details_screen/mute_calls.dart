import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class MuteCallsWidget extends StatefulWidget {
  const MuteCallsWidget({
    super.key,
  });

  @override
  State<MuteCallsWidget> createState() => _MuteCallsWidgetState();
}

class _MuteCallsWidgetState extends State<MuteCallsWidget> {
  bool isMutedCalls = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Mute calls',
            style: TextStyle(fontSize: 18.0),
          ),
          Switch.adaptive(
            activeColor: kBlueColor,
            value: isMutedCalls, 
            onChanged: (value) {
              setState(() {
                isMutedCalls = value;
              });
            }
          ),
        ],
      ),
    );
  }
}
