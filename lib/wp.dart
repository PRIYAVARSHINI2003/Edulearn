import 'package:edusign/HomePage.dart';
import 'package:edusign/joincommunity.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/joincommunity.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(w());
}

class w extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('JOIN WITH US'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => li()));
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
          imagePath: 'assets/images/img_87.png',
          title: 'JOIN WITH US',
          subtitle: 'Unity is strength, division is weakness',
          link: 'https://chat.whatsapp.com/E61LxvG7BHs9yIPcUzuo1V',
        ),
      ],
    );
  }
}

class MyRowWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String link;

  MyRowWidget({
    required this.imagePath,
    required this.title,
    required this.subtitle,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' $subtitle',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  // Text(
                  //   ' $source',
                  //   style: TextStyle(
                  //     fontSize: 17,
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue), // Change the color here
                    ),
                    child: Text('Join'),
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
        title: Text('Join'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
