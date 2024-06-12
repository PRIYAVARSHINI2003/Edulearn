import 'package:edusign/learningmaterials.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(vi());
}

class vi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign Learning'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => s2()));
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
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyRowWidget(
          imagePath: 'assets/images/img_54.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language 101',
          Source: 'Youtube',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_55.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language',
          Source: 'NAVJYOTI',
        ),

        MyRowWidget(
          imagePath: 'assets/images/img_56.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language for deaf and dumb people ',
          Source: 'Divyangjan ',
        ),

        // Add more rows as needed
      ],
    );
  }
}

class MyRowWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String Source;

  MyRowWidget({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.Source,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image on the left side
          Container(
            width: 100, // Adjust the image width
            height: 200,
            child: Image.asset('$imagePath'),
          ),
          SizedBox(width: 20), // Add some spacing between the image and text
          // Text in the middle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\n$title',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  ' $subtitle',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),

                Text(
                  ' $Source',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20), // Add spacing between text and button
                // Button
                ElevatedButton(
                  onPressed: () {
                    // Handle button click
                  },
                  child: Text('Go to Course'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}