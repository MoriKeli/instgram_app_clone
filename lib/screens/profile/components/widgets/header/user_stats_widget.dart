import 'package:flutter/material.dart';


class UserStatsWidget extends StatelessWidget {
  const UserStatsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              '3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text('Posts'),
          ],
        ),
        SizedBox(width: 24.0),
        Column(
          children: [
            Text(
              '208',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text('Followers'),
          ],
        ),
        SizedBox(width: 24.0),
        Column(
          children: [
            Text(
              '328',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text('Following')
          ],
        ),
      ],
    );
  }
}