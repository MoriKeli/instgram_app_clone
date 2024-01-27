import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class GalleryHeaderAndTrayIcon extends StatelessWidget {
  const GalleryHeaderAndTrayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Gallery',
            style: TextStyle(
              color: kTextColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(Icons.expand_more),
        Spacer(),
        IconButton.filled(
          onPressed: () {},
          icon: Icon(Icons.copy, size: 16.0),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(kSecondaryColor)
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined, size: 16.0),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(kSecondaryColor),
          ),
        ),
      ],
    );
  }
}
