import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class ReelsVideoHeaderWidget extends StatelessWidget {
  const ReelsVideoHeaderWidget({
    super.key,
    required VideoPlayerController videoPlayerController,
  }) : _videoPlayerController = videoPlayerController;

  final VideoPlayerController _videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            ReelsMuteAndUnmuteBtn(videoPlayerController: _videoPlayerController),
            ReelsCameraBtn(),
          ],
        ),
      ),
    );
  }
}

// 1. Camera button
class ReelsCameraBtn extends StatelessWidget {
  const ReelsCameraBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.camera_alt_outlined, size: 28.0),
    );
  }
}


// 2. Mute and unmute button
class ReelsMuteAndUnmuteBtn extends StatefulWidget {
  const ReelsMuteAndUnmuteBtn({
    super.key,
    required this.videoPlayerController,
  });

  final VideoPlayerController videoPlayerController;

  @override
  State<ReelsMuteAndUnmuteBtn> createState() => _ReelsMuteAndUnmuteBtnState();
}

class _ReelsMuteAndUnmuteBtnState extends State<ReelsMuteAndUnmuteBtn> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          widget.videoPlayerController.value.volume > 0
            ? widget.videoPlayerController.setVolume(0.0)
            : widget.videoPlayerController.setVolume(1.0);
        });
      },
      icon: Icon(
        widget.videoPlayerController.value.volume == 0
          ? Icons.volume_off_outlined
          : Icons.volume_up_outlined,
        size: 28.0,
      ),
    );
  }
}
