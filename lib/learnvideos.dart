import 'package:edusign/i.dart';
import 'package:edusign/signlearning.dart';
import 'package:edusign/videos.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(v());
}

class v extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Learn Sign Videos'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => s1()));
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
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
        body: DynamicGrids(),
      ),
    );
  }
}

class DynamicGrids extends StatefulWidget {
  @override
  _DynamicGridsState createState() => _DynamicGridsState();
}

class _DynamicGridsState extends State<DynamicGrids> {
  List<String> gridNames = [
    'Alphabets',
    'Action Words',
    'Adjective',
    'Adverb',
    'Animals',
    'Flowers',
    'Things',
    'Birds',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
      ),
      itemCount: gridNames.length, // Number of grid items
      itemBuilder: (BuildContext context, int index) {
        return GridItem(
          name: gridNames[index],
          onPressed: () {
            // Specify the destination Dart file for each button press
            if (gridNames[index] == 'Alphabets') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => vide()));
            }
          },
        );
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  GridItem({required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontSize: 20.0), // Increase title size
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(
              'Learn',
              style: TextStyle(fontSize: 11.0), // Reduce button size
            ),
          ),
        ],
      ),
    );
  }
}
