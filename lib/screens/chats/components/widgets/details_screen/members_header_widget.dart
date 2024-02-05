import 'package:flutter/material.dart';


class MembersHeaderWidget extends StatelessWidget {
  const MembersHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        children: [
          Text(
            'Members',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
