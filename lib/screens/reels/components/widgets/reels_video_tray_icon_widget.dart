import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class ReelsVideoTrayIconWidget extends StatefulWidget {
  const ReelsVideoTrayIconWidget({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  State<ReelsVideoTrayIconWidget> createState() => _ReelsVideoTrayIconWidgetState();
}

class _ReelsVideoTrayIconWidgetState extends State<ReelsVideoTrayIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        child: Column(
          children: [
            // 1. Like button
            ReelsLikeBtn(),
            Text('12K', style: TextStyle(color: kTextColor)),
            SizedBox(height: 12.0),
            // 2. Comment button
            ReelsCommentsBtn(),
            Text('2K', style: TextStyle(color: kTextColor)),
            SizedBox(height: 12.0),
            // 3. Share as message button
            ReelsMessageBtn(),
            Text('500', style: TextStyle(color: kTextColor)),
            SizedBox(height: 12.0),
            // 4. More options button
            MoreOptionsBtn(),
            SizedBox(height: 12.0),
            // 5. Reels creator profile picture
            ReelsAuthorSmallProfilePictureWidget(profilePic: widget.profilePic),
          ],
        ),
      ),
    );
  }
}


class ReelsAuthorSmallProfilePictureWidget extends StatelessWidget {
  const ReelsAuthorSmallProfilePictureWidget({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3.0),
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
      ),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          profilePic,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class MoreOptionsBtn extends StatelessWidget {
  const MoreOptionsBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 28.0));
  }
}

class ReelsMessageBtn extends StatelessWidget {
  const ReelsMessageBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: ImageIcon(AssetImage('assets/images/icons/message-icon.png')),
    );
  }
}

class ReelsCommentsBtn extends StatelessWidget {
  const ReelsCommentsBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: ImageIcon(AssetImage('assets/images/icons/comment-icon.png'), size: 32.0),
    );
  }
}

class ReelsLikeBtn extends StatefulWidget {
  const ReelsLikeBtn({
    super.key,
  });

  @override
  State<ReelsLikeBtn> createState() => _ReelsLikeBtnState();
}

class _ReelsLikeBtnState extends State<ReelsLikeBtn> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => setState(() => isLiked = !isLiked),
      icon: Icon(isLiked == true ? Icons.favorite : Icons.favorite_border,  color: isLiked == true ? Colors.red : Colors.white, size: 28.0,),
    );
  }
}
