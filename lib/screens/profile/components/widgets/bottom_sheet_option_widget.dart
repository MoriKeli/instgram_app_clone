import 'package:flutter/material.dart';


class BottomSheetOptions extends StatelessWidget {
  const BottomSheetOptions({
    super.key,
    required this.option,
    required this.optionIcon,
  });

  final String option;
  final IconData optionIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(optionIcon),
        ),
        Text(option),
      ],
    );
  }
}
