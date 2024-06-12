import 'package:edusign/learnimages.dart';
import 'package:flutter/material.dart';
import 'package:edusign/HomePage.dart';
void main() {
  runApp(te());
}

class te extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlphabetGrid(),
    );
  }
}

class AlphabetGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabets'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => g()));
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
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          AlphabetItem(imageAsset: 'assets/images/img_23.png', text: 'A'),
          AlphabetItem(imageAsset: 'assets/images/img_24.png', text: 'B'),
          AlphabetItem(imageAsset: 'assets/images/img_25.png', text: 'C'),
          AlphabetItem(imageAsset: 'assets/images/img_26.png', text: 'D'),
          AlphabetItem(imageAsset: 'assets/images/img_27.png', text: 'E'),
          AlphabetItem(imageAsset: 'assets/images/img_28.png', text: 'F'),
          AlphabetItem(imageAsset: 'assets/images/img_29.png', text: 'G'),
          AlphabetItem(imageAsset: 'assets/images/img_30.png', text: 'H'),
          AlphabetItem(imageAsset: 'assets/images/img_31.png', text: 'I'),
          AlphabetItem(imageAsset: 'assets/images/img_32.png', text: 'J'),
          AlphabetItem(imageAsset: 'assets/images/img_33.png', text: 'K'),
          AlphabetItem(imageAsset: 'assets/images/img_34.png', text: 'L'),
          AlphabetItem(imageAsset: 'assets/images/img_35.png', text: 'M'),
          AlphabetItem(imageAsset: 'assets/images/img_36.png', text: 'N'),
          AlphabetItem(imageAsset: 'assets/images/img_37.png', text: 'O'),
          AlphabetItem(imageAsset: 'assets/images/img_38.png', text: 'P'),
          AlphabetItem(imageAsset: 'assets/images/img_39.png', text: 'Q'),
          AlphabetItem(imageAsset: 'assets/images/img_40.png', text: 'R'),
          AlphabetItem(imageAsset: 'assets/images/img_41.png', text: 'S'),
          AlphabetItem(imageAsset: 'assets/images/img_42.png', text: 'T'),
          AlphabetItem(imageAsset: 'assets/images/img_43.png', text: 'U'),
          AlphabetItem(imageAsset: 'assets/images/img_44.png', text: 'V'),
          AlphabetItem(imageAsset: 'assets/images/img_45.png', text: 'W'),
          AlphabetItem(imageAsset: 'assets/images/img_46.png', text: 'X'),
          AlphabetItem(imageAsset: 'assets/images/img_47.png', text: 'Y'),
          AlphabetItem(imageAsset: 'assets/images/img_48.png', text: 'Z'),
          // Add more AlphabetItem widgets for each alphabet
        ],
      ),
    );
  }
}

class AlphabetItem extends StatelessWidget {
  final String imageAsset;
  final String text;

  AlphabetItem({required this.imageAsset, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          imageAsset,
          width: 180.0, // Adjust the width as needed
          height: 149.0, // Adjust the height as needed
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: TextStyle(fontSize: 18.0), // Adjust the font size as needed
        ),
      ],
    );
  }
}
