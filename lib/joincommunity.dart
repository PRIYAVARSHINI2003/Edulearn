import 'dart:math';

// import 'package:edusign/learningmaterial.dart';
import 'package:edusign/HomePage.dart';
import 'package:edusign/ach.dart';
import 'package:edusign/edunews.dart';
import 'package:edusign/edunews1.dart';
import 'package:edusign/learningmaterials.dart';
import 'package:edusign/ourcommunity.dart';
import 'package:edusign/practice.dart';
import 'package:edusign/signlearning.dart';
import 'package:edusign/wp.dart';
import 'package:edusign/wp1.dart';
import 'package:flutter/material.dart';

import 'schemes.dart';

void main() {
  runApp(const li());
}

class li extends StatelessWidget {
  const li({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Connect With Us'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => list()));
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => list()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(),
              SizedBox(height: 50),
              ClickyBuilder1(),
              SizedBox(height: 50),
              ClickyBuilder2(),
              SizedBox(height: 50),
              ClickyBuilder3(),
              SizedBox(height: 50),
              ClickyBuilder4(),
            ],
          ),
        ),
      ),
    );
  }
}

class ClickyBuilder1 extends StatefulWidget {
  const ClickyBuilder1({Key? key}) : super(key: key);

  @override
  ClickyBuilderState createState() => ClickyBuilderState();
}

class ClickyBuilderState extends State<ClickyBuilder1> {
  Color color = Colors.blue;

  String pad(int i) => i.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(
            350, 125), // Make sure this matches the aspect ratio of your image
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.zero, // Eliminate padding
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (w1())),
        );
      },
      child: Ink.image(
        image: AssetImage("assets/images/img_66.png"),
        fit: BoxFit.cover, // Make the image cover the entire button
      ),
    );
  }
}

class ClickyBuilder2 extends StatefulWidget {
  const ClickyBuilder2({Key? key}) : super(key: key);

  @override
  ClickyBuilderState2 createState() => ClickyBuilderState2();
}

class ClickyBuilderState2 extends State<ClickyBuilder2> {
  Color color = Colors.blue;

  String pad(int i) => i.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(
            350, 125), // Make sure this matches the aspect ratio of your image
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.zero, // Eliminate padding
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (V())),
        );
      },
      child: Ink.image(
        image: AssetImage("assets/images/img_67.png"),
        fit: BoxFit.cover, // Make the image cover the entire button
      ),
    );
  }
}

class ClickyBuilder3 extends StatefulWidget {
  const ClickyBuilder3({Key? key}) : super(key: key);

  @override
  ClickyBuilderState3 createState() => ClickyBuilderState3();
}

class ClickyBuilderState3 extends State<ClickyBuilder3> {
  Color color = Colors.blue;

  String pad(int i) => i.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(
            350, 125), // Make sure this matches the aspect ratio of your image
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.zero, // Eliminate padding
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (arch())),
        );
      },
      child: Ink.image(
        image: AssetImage("assets/images/img_68.png"),
        fit: BoxFit.cover, // Make the image cover the entire button
      ),
    );
  }
}
// In this code, I've removed the Text widget, so the button only displays the image without any text on top. Adjust the fixedSize property of ElevatedButton.styleFrom to match the aspect ratio of your image, and set the padding to zero as before to ensure the image fully covers the button without any borders left uncovered.

class ClickyBuilder4 extends StatefulWidget {
  const ClickyBuilder4({Key? key}) : super(key: key);

  @override
  ClickyBuilderState4 createState() => ClickyBuilderState4();
}

class ClickyBuilderState4 extends State<ClickyBuilder4> {
  Color color = Colors.blue;

  String pad(int i) => i.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(
            350, 125), // Make sure this matches the aspect ratio of your image
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.zero, // Eliminate padding
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (sch())),
        );
      },
      child: Ink.image(
        image: AssetImage("assets/images/img_72.png"),
        fit: BoxFit.cover, // Make the image cover the entire button
      ),
    );
  }
}

final rng = Random();

const randomColors = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.orange,
  Colors.indigo,
  Colors.deepPurple,
  Colors.white10,
];

Color getRandomColor() {
  return randomColors[rng.nextInt(randomColors.length)];
}
