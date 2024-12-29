import 'package:flutter/material.dart';
import 'package:instagram_clone/models/albums.dart';
import 'package:instagram_clone/screens/profile/components/widgets/albums.dart';

class UserAlbums extends StatelessWidget {
  const UserAlbums({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            userAlbumPhotos.length,
            (index) => Album(
              coverPhotoPath: userAlbumPhotos[index].coverPhoto,
              albumName: userAlbumPhotos[index].albumName,
            ),
          )
        ),
      ),
    );
  }
}
