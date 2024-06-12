import 'package:edusign/learningmaterials.dart';

// import 'package:url_launcher/url_launcher.dart' ;

import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(b());
}

class b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
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
          imagePath: 'assets/images/img_17.png',
          title: 'Indian SignLanguage',
          subtitle: 'A Linguistic Analysis of Its \n Grammar',
          author: 'Author: Samar Sinha',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_18.png',
          title: 'Indian SignLanguage',
          subtitle: 'The Vocabulary of Signs',
          author: 'Author: William Tomkins',
        ),

        MyRowWidget(
          imagePath: 'assets/images/img_50.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language',
          author: 'Robert Hofsinde ',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_49.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language Class I',
          author: 'Haryana Welfare Society ',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_51.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language - Family',
          author: 'Himanshu Kansa ',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_53.png',
          title: 'Indian SignLanguage',
          subtitle: 'Indian Sign Language - Greetings',
          author: 'Ankit Vishwakarma ',
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
  final String author;

  MyRowWidget({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.author,
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
              children: <Widget>[
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
                  ' $author',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20), // Add spacing between text and button
                // Button
                // ElevatedButton(
                // onPressed: () {
                //   launch('https://www.google.co.in/books/edition/Indian_Sign_Language_Class_I/Dh-CEAAAQBAJ?hl=en&gbpv=1&dq=indian+sign+language&printsec=frontcover');
                // },
                // child: Text('Read Now'),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
