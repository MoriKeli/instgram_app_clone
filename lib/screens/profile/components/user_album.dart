import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user_profile/albums.dart';
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
          children: [
            Row(
              children: List.generate(
                userAlbumPhotos.length,
                (index) => Album(
                  coverPhotoPath: userAlbumPhotos[index].coverPhoto,
                  albumName: userAlbumPhotos[index].albumName,
                ),
              ),
            ),
            SizedBox(width: 8.0),
            AddNewAlbumBtn(),   // add new album button
            SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
