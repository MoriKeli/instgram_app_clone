import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  const Album({
    super.key,
    required this.coverPhotoPath,
    required this.albumName,
  });

  final String albumName, coverPhotoPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .22,
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * .12,
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.5),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * .08,
                backgroundImage: AssetImage(coverPhotoPath),
              )),
          Text(
            albumName,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
