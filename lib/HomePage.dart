import 'dart:math';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:edusign/aw.dart';
import 'package:edusign/learningmaterials.dart';
import 'package:edusign/ourcommunity.dart';
import 'package:edusign/practice.dart';
import 'package:edusign/signlearning.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';

import 'clg.dart';
import 'clg1.dart';

void main() {
  runApp(const list());
}

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  ListScreenState createState() => ListScreenState();
}

class ListScreenState extends State<list> {
  final FlutterTts flutterTts = FlutterTts();
  final stt.SpeechToText speechToText = stt.SpeechToText();
  String _resultText = '';

  @override
  void initState() {
    super.initState();
    _initializeSpeechToText();
  }

  Future<void> _initializeSpeechToText() async {
    if (!await speechToText.initialize()) {
      setState(() {
        _resultText = 'Error: Speech to text initialization failed';
      });
    }
  }

  Future<void> _speak(String text) async {
    await flutterTts.speak(text);
  }

  Future<void> _listen() async {
    if (speechToText.isAvailable) {
      try {
        await speechToText.listen(
          onResult: (result) {
            setState(() {
              _resultText = result.recognizedWords.toLowerCase();
              _handleVoiceCommands();
            });
          },
        );
      } catch (e) {
        print('Error during speech recognition: $e');
        setState(() {
          _resultText = 'Error: $e';
        });
      }
    } else {
      setState(() {
        _resultText = 'Error: Speech recognition is not available';
      });
    }
  }

  void _handleVoiceCommands() {
    if (_resultText == 'sign practice page') {
      _speak('Navigating to Sign Practice Page');
      // Add your navigation logic here
      Navigator.push(context, MaterialPageRoute(builder: (context) => skip1()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('EduLearn'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle home button tap
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle settings button tap
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle menu button tap
              },
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [Colors.white],
                ),
              ),
            ),
            // Your background image and other UI elements go here

            Center(
              // Center-align the content
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    ClickyBuilder1(),
                    SizedBox(height: 40),
                    ClickyBuilder2(),
                    SizedBox(height: 40),
                    ClickyBuilder3(),
                    SizedBox(height: 40),
                    ClickyBuilder4(),
                    SizedBox(height: 40),
                    ClickyBuilder5(),
                    SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        fixedSize: const Size(250, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => s2()),
                        );
                        // Handle the onPressed action for this button
                      },
                      child: Text(
                        "REQUIREMENT AND FEEDBACK",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          onPressed: _listen,
          tooltip: 'Start Listening',
          child: const Icon(Icons.mic),
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0), // Add some bottom padding
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          fixedSize: const Size(300, 185), // Adjusted size to fit the page
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (s1())),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/gif/r3.gif", // Replace with your GIF path
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10), // Adjust the spacing between GIF and text
            Text(
              "RESOURCE HUB",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
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
  Color color = Colors.indigoAccent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0), // Add some bottom padding
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          fixedSize: const Size(300, 176), // Adjusted size to fit the page
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (s2())),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/gif/G1.gif", // Replace with your GIF path
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10), // Adjust the spacing between GIF and text
            Text(
              "LEARNING MATERIALS",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
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
  Color color = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0), // Add some bottom padding
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          fixedSize: const Size(289, 179), // Adjusted size to fit the page
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (sk())),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/gif/g11.gif", // Replace with your GIF path
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10), // Adjust the spacing between GIF and text
            Text(
              "COMMUNITY AND PEER SUPPORT",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClickyBuilder4 extends StatefulWidget {
  const ClickyBuilder4({Key? key}) : super(key: key);

  @override
  ClickyBuilderState4 createState() => ClickyBuilderState4();
}

class ClickyBuilderState4 extends State<ClickyBuilder4> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0), // Add some bottom padding
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          fixedSize: const Size(300, 185), // Adjusted size to fit the page
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (aw())),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/gif/r.gif", // Replace with your GIF  430*215
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10), // Adjust the spacing between GIF and text
            Text(
              "AWARENESS AND FEEDBACK",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClickyBuilder5 extends StatefulWidget {
  const ClickyBuilder5({Key? key}) : super(key: key);

  @override
  ClickyBuilderState5 createState() => ClickyBuilderState5();
}

class ClickyBuilderState5 extends State<ClickyBuilder5> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0), // Add some bottom padding
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo,
          fixedSize: const Size(280, 176), // Adjusted size to fit the page
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => (skip1())),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/gif/r5.gif", // Replace with your GIF  430*215
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10), // Adjust the spacing between GIF and text
            Text(
              "LIVE PRATICE",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// final rng = Random();
//
// const randomColors = [
//   Colors.blue,
//   Colors.green,
//   Colors.red,
//   Colors.orange,
//   Colors.indigo,
//   Colors.deepPurple,
//   Colors.white10,
// ];
//
// Color getRandomColor() {
//   return randomColors[rng.nextInt(randomColors.length)];
// }
