import 'dart:async';
import 'package:edusign/login1.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize the video controller and load the video asset
    _controller = VideoPlayerController.asset('assets/videos/splash.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown
        setState(() {});
        // Start playing the video
        _controller.play();
      });

    // Navigate to the next screen after the video duration (3 seconds in this case)
    Timer(
      Duration(seconds: 3),
      () {
        _controller.dispose(); // Dispose of the video controller
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Container(); // Return an empty container until the video is initialized
  }

  @override
  void dispose() {
    super.dispose();
    _controller
        .dispose(); // Dispose of the video controller when the widget is disposed
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            //child: Text("This is the next screen after the splash screen."),
            ),
      ),
    );
  }
}
