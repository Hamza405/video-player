import 'package:flutter/material.dart';
import 'package:video_example/widget/video_player_widget.dart';
import 'package:video_player/video_player.dart';

import '../../main.dart';

class MyVideoPlayer extends StatefulWidget {
  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  final textController = TextEditingController(
      text:
          'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4');
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.network(textController.text)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            VideoPlayerWidget(controller: controller),
          ],
        ),
      );
}
