import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class ReelsScreen extends StatefulWidget {
  static String routeName = '/reels';
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  late VideoPlayerController _videoPlayerController;
  bool playVideo = true;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/videos/github-unwrapped.mp4')
      ..initialize().then((value) {
        setState(() {
          _videoPlayerController.setLooping(true);  // reels video repeats after playing once
          _videoPlayerController.setVolume(1.0);  // set audio volume to full volume
          _videoPlayerController.play();  // start playing the reels video
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              setState(() => playVideo = !playVideo);   // if true, set playVideo to false and vice versa
              // if playVideo is true, play reel otherwise pause the reels video
              playVideo ? _videoPlayerController.play() : _videoPlayerController.pause();
            },
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: VideoPlayer(_videoPlayerController),
            ),
          ),
          if (!playVideo)
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white30,
                radius: 30.0,
                child: Icon(Icons.play_arrow, size: 30.0),
              ),
            ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}

// boiler plate code - video_player package at https://pub.dev/packages/video_player

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// void main() => runApp(const VideoApp());

// /// Stateful widget to fetch and then display video content.
// class VideoApp extends StatefulWidget {
//   const VideoApp({super.key});

//   @override
//   _VideoAppState createState() => _VideoAppState();
// }

// class _VideoAppState extends State<VideoApp> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(Uri.parse(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Demo',
//       home: Scaffold(
//         body: Center(
//           child: _controller.value.isInitialized
//               ? AspectRatio(
//                   aspectRatio: _controller.value.aspectRatio,
//                   child: VideoPlayer(_controller),
//                 )
//               : Container(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller.value.isPlaying
//                   ? _controller.pause()
//                   : _controller.play();
//             });
//           },
//           child: Icon(
//             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// ChatGPT code suggestion
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// void main() => runApp(ReelsApp());

// class ReelsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ReelsScreen(),
//     );
//   }
// }

// class ReelsScreen extends StatefulWidget {
//   @override
//   _ReelsScreenState createState() => _ReelsScreenState();
// }

// class _ReelsScreenState extends State<ReelsScreen> {
//   final List<String> videoAssets = [
//     'assets/videos/video1.mp4',
//     'assets/videos/video2.mp4',
//     'assets/videos/video3.mp4',
//   ];

//   final PageController _pageController = PageController();
//   late List<VideoPlayerController> _controllers;

//   @override
//   void initState() {
//     super.initState();
//     _controllers = videoAssets
//         .map((asset) => VideoPlayerController.asset(asset)..initialize())
//         .toList();

//     _controllers.forEach((controller) {
//       controller.setLooping(true);
//     });

//     // Auto-play the first video
//     if (_controllers.isNotEmpty) {
//       _controllers[0].play();
//     }
//   }

//   @override
//   void dispose() {
//     _controllers.forEach((controller) => controller.dispose());
//     super.dispose();
//   }

//   void _playVideo(int index) {
//     for (int i = 0; i < _controllers.length; i++) {
//       if (i == index) {
//         _controllers[i].play();
//       } else {
//         _controllers[i].pause();
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: PageView.builder(
//         scrollDirection: Axis.vertical,
//         controller: _pageController,
//         itemCount: videoAssets.length,
//         onPageChanged: _playVideo,
//         itemBuilder: (context, index) {
//           final controller = _controllers[index];

//           return Stack(
//             children: [
//               Center(
//                 child: AspectRatio(
//                   aspectRatio: controller.value.aspectRatio,
//                   child: VideoPlayer(controller),
//                 ),
//               ),
//               Positioned(
//                 bottom: 50,
//                 right: 20,
//                 child: Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.favorite, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     SizedBox(height: 10),
//                     IconButton(
//                       icon: Icon(Icons.comment, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                     SizedBox(height: 10),
//                     IconButton(
//                       icon: Icon(Icons.share, color: Colors.white),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
