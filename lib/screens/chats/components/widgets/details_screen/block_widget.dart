import 'package:flutter/material.dart';


class BlockWidget extends StatelessWidget {
  const BlockWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            'Block',
            style: TextStyle(color: const Color.fromARGB(255, 245, 30, 14), fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
