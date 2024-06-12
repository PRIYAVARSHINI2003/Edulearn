import 'package:edusign/HomePage.dart';
import 'package:edusign/learningmaterials.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(VI());
}

class VI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Courses'),
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
          title: 'Indian Sign Language',
          subtitle: 'Indian Sign Language 101',
          source: 'Youtube',
          link: 'https://youtu.be/JPV-vboWfhY?si=Cg6i4-2Jcc2HnGrf',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_55.png',
          title: 'Indian Sign Language',
          subtitle: 'Indian Sign Language',
          source: 'NAVJYOTI',
          link:
              'https://eskillworld.com/course-details/115/indian-sign-language',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_56.png',
          title: 'Indian Sign Language',
          subtitle: 'Indian Sign Language for deaf and dumb people',
          source: 'Divyangjan',
          link: 'https://islrtc.nic.in/',
        ),
        // Add more rows as needed with different URLs for each button
      ],
    );
  }
}

class MyRowWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String source;
  final String link;

  MyRowWidget({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.source,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Open the URL in a web view within the app
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(url: link),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 200,
              child: Image.asset('$imagePath'),
            ),
            SizedBox(width: 20),
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
                    ' $source',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue), // Change the color here
                    ),
                    child: Text('Go to Course'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  final String url;

  WebViewScreen({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
