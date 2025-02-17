import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class ReelsVideoWidget extends StatelessWidget {
  const ReelsVideoWidget({
    super.key,
    required VideoPlayerController videoPlayerController,
  }) : _videoPlayerController = videoPlayerController;

  final VideoPlayerController _videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: VideoPlayer(_videoPlayerController),
    );
  }
}