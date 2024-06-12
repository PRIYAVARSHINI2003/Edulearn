import 'package:edusign/clg1.dart';
import 'package:edusign/learningmaterials.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:url_launcher/url_launcher.dart' ;
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(clg2());
}

class clg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Colleges'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => clg1()));
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
          imagePath: 'assets/images/img_95.png',
          title: 'Anna University',
          subtitle: 'CEG Campus,ACT Campus',
        ),
        //Divider(thickness: 1, color: Colors.grey), // Divider between rows
        MyRowWidget(
          imagePath: 'assets/images/img_97.png',
          title: 'Madras Institue of Technology',
          subtitle: '',
        ),
        //Divider(thickness: 1, color: Colors.grey), // Divider between rows
        MyRowWidget(
          imagePath: 'assets/images/img_96.png',
          title: 'Indian Institue of Technology',
          subtitle: '',
        ),
        //Divider(thickness: 1, color: Colors.grey), // Divider between rows
        MyRowWidget(
          imagePath: 'assets/images/img_98.png',
          title: 'Loyola College',
          subtitle: '',
        ),
        // Divider(thickness: 1, color: Colors.grey), // Divider between rows

        // Add more rows as needed
      ],
    );
  }
}

class MyRowWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  MyRowWidget({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  _MyRowWidgetState createState() => _MyRowWidgetState();
}

class _MyRowWidgetState extends State<MyRowWidget> {
  bool isFavorite = false;

  void _showFavoriteAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Added to Favorites'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _launchURL() async {
    String url =
        'https://www.annauniv.edu/'; // Replace with the URL you want to navigate to
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL, // Call _launchURL function when the row is tapped
      child: Container(
        margin: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Star Icon (Tappable)
            GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
                if (isFavorite) {
                  _showFavoriteAlert();
                }
              },
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: Colors.indigo,
              ),
            ),

            SizedBox(width: 10), // Add spacing between star icon and image
            // Image on the left side
            Container(
              width: 100, // Adjust the image width
              height: 200,
              child: Image.asset(widget.imagePath),
            ),
            SizedBox(width: 20), // Add some spacing between the image and text
            // Text in the middle
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\n${widget.title}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' ${widget.subtitle}',
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
      ),
    );
  }
}
