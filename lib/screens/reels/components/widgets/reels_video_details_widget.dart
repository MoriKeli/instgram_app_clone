import 'package:flutter/material.dart';


class ReelsVideoDetailsWidget extends StatelessWidget {
  const ReelsVideoDetailsWidget({
    super.key,
    required this.username,
    required this.profilePic,
    this.caption = '',
    this.musicTitle = '',
  });

  final String username, profilePic, caption, musicTitle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ReelsCreatorProfilePicWidget(profilePic: profilePic),
                SizedBox(width: 8.0),
                ReelsCreatorUsername(username: username),
                FollowBtn(),
              ],
            ),
            SizedBox(height: 8.0),
            ReelsVideoDescriptionWidget(caption: caption),
            SizedBox(height: 8.0),
            if (musicTitle.isNotEmpty)
              ReelsVideoMusicBanner(musicTitle: musicTitle),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}


class ReelsVideoMusicBanner extends StatelessWidget {
  const ReelsVideoMusicBanner({
    super.key,
    required this.musicTitle,
  });

  final String musicTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white12,
        shape: BoxShape.rectangle,
      ),
      margin: EdgeInsets.symmetric(vertical: 12.0),
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: [
          Icon(Icons.music_note, size: 14.0),
          SizedBox(width: 6.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * .28,
            child: Text(
              musicTitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13.0),
            ),
          ),
        ],
      ),
    );
  }
}


class ReelsVideoDescriptionWidget extends StatelessWidget {
  const ReelsVideoDescriptionWidget({
    super.key,
    required this.caption,
  });

  final String caption;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .68,
      child: Text(
        caption,
        softWrap: true,
      ),
    );
  }
}

class FollowBtn extends StatelessWidget {
  const FollowBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0),
          shape: BoxShape.rectangle,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 8.0, vertical: 2.0),
        child: Text(
          'Follow',
          style: TextStyle(fontSize: 12.0),
        ),
      ),
    );
  }
}

class ReelsCreatorUsername extends StatelessWidget {
  const ReelsCreatorUsername({
    super.key,
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .26,
      child: Text(
        username,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class ReelsCreatorProfilePicWidget extends StatelessWidget {
  const ReelsCreatorProfilePicWidget({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(profilePic)
    );
  }
}
