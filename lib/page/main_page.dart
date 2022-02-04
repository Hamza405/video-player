import 'package:flutter/material.dart';
import 'package:video_example/widget/network_player_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: MyVideoPlayer(),
      ));
}
