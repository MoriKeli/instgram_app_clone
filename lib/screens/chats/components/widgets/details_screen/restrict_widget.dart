import 'package:flutter/material.dart';


class RestrictWidget extends StatelessWidget {
  const RestrictWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            'Restrict',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
