import 'package:flutter/material.dart';


class ReportWidget extends StatelessWidget {
  const ReportWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            'Report...',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
