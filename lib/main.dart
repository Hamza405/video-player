import 'package:flutter/material.dart';
import 'package:video_example/page/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Video Player',
        theme: ThemeData(
          primaryColor: Colors.purple[200],
          scaffoldBackgroundColor: Colors.grey[700],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      );
}
