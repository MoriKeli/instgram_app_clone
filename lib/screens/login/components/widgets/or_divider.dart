import 'package:flutter/material.dart';


class ORDivider extends StatelessWidget {
  const ORDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "OR",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

