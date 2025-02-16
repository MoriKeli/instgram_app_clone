import 'package:flutter/material.dart';
import 'package:instagram_clone/models/reels.dart';
import 'package:instagram_clone/screens/reels/components/widgets/reels_video_details_widget.dart';
import 'package:instagram_clone/screens/reels/components/widgets/reels_video_header_widget.dart';
import 'package:instagram_clone/screens/reels/components/widgets/reels_video_tray_icon_widget.dart';
import 'package:instagram_clone/screens/reels/components/widgets/reels_video_widget.dart';
import 'package:video_player/video_player.dart';


class ReelsScreenBody extends StatefulWidget {
  const ReelsScreenBody({super.key});

  @override
  State<ReelsScreenBody> createState() => _ReelsScreenBodyState();
}

class _ReelsScreenBodyState extends State<ReelsScreenBody> {
  final PageController _pageController = PageController();
  late List<VideoPlayerController> _controllers;


  @override
  void initState() {
    super.initState();
    _controllers = reels.map((video) => VideoPlayerController.asset(video.videoFilePath)..initialize().then((value) {
      setState(() {
        for (var controller in _controllers) {
          controller.setLooping(true);
          controller.setVolume(1.0);
        }
      });
    })).toList();
    

    // Auto-play the first video
    if (_controllers.isNotEmpty) {
      _controllers[0].play();
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _playVideo(int index) {
    for (int i = 0; i < _controllers.length; i++) {
      if (i == index) {
        _controllers[i].play();
      } else {
        _controllers[i].pause();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: reels.length,
      onPageChanged: _playVideo,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final controller = _controllers[index];

        return Stack(
          alignment: Alignment.bottomRight,
          fit: StackFit.expand,
          children: [
            // 1. Reels video widget
            AspectRatio(
              aspectRatio: 1.1,
              child: ReelsVideoWidget(videoPlayerController: controller),
            ),

            // wrap the DecoratedBox() with a GestureDetector to allow a user to play or pause a reels video
            
            /* NOTE: if GestureDetector() wraps the AspectRatio() or ReelsVideoWidget() it won't work 
              because AspectRatio() is the lowest in the widget tree ,i.e. below DecoratedBox(), in ReelsScreen() 
            */

            GestureDetector(
              onTap: () {
                // if isPlaying is true, pause reels video otherwise play the reels video
                controller.value.isPlaying
                    ? controller.pause()
                    : controller.play();
              },
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black.withOpacity(.2)),
              ),
            ),

            /*
              1. The widgets below MUST always come after DecoratedBox() otherwise they will
              be affected by the box's opacity.
              2. The header widget is only displayed when placed after the ReelsVideoWidget(). If placed before the
              ReelsVideoWidget(), it will sit under the ReelsVideoWidget() and is obscured by the widget making it invisible to the user.
            */

            // 2. Mute/Unmute and camera buttons
            ReelsVideoHeaderWidget(videoPlayerController: controller),
            // 3. Tray icon - like, comment, send and more options icons, and reels owner profile picture
            ReelsVideoTrayIconWidget(profilePic: reels[index].profilePic),
            ReelsVideoDetailsWidget(
              username: reels[index].username,
              profilePic: reels[index].profilePic,
              caption: reels[index].videoCaption,
              musicTitle: reels[index].reelsMusic,
            ),
          ],
        );
      },
    );
  }
}
