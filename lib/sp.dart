import 'package:edusign/HomePage.dart';
import 'package:edusign/joincommunity.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(V());
}

class V extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Educational News'),
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
          imagePath: 'assets/images/img_58.png',
          title: 'Practice',
          subtitle: 'Get access to educational news in your finger tip',
          source: '',
          link: 'https://codepen.io/mediapipe/pen/LYRRYEw',
        ),
        // MyRowWidget(
        //   imagePath: 'assets/images/img_74.png',
        //   title: 'BREAKING SIGN LANGUAGE BARRIER THROUGH VIDEOS IN NAGPUR',
        //   subtitle: '  Even while communicating in sign language, one may still get lost in translation. Since even the sign language differs place to place, the National Council of Educational Research',
        //   source: 'TOI: Shishir Arya / TNN / Feb 10, 2023, 08:56 IST',
        //   link: 'https://timesofindia.indiatimes.com/city/nagpur/breaking-sign-language-barrier-through-videos-in-nagpur/articleshow/97789191.cms',
        // ),
        // MyRowWidget(
        //   imagePath: 'assets/images/img_76.png',
        //   title: '60% SPECIALLY-ABLED STUDENTS DROP DROP OUT DUE TO TEACHERS’ SHORTAGE',
        //   subtitle: ' There are just 2,100 teachers for over 80,000 specially-abled students in Rajasthan. Teachers said this was the primary reason for dropout of of such children from the special government schools in the state',
        //   source: 'TOI: Suparna Roy / TNN / Updated: Jul 13, 2023, 12:15 IST',
        //   link: 'https://timesofindia.indiatimes.com/city/jaipur/60-specially-abled-students-drop-out-due-to-teachers-shortage/articleshow/101713214.cms',
        // ),
        // MyRowWidget(
        //   imagePath: 'assets/images/img_80.png',
        //   title: 'THOMAS EDISON',
        //   subtitle: 'Biggest achievements: One of Edison’s most remarkable achievements is the invention of the lightbulb, which he ensured would light a home for hours. Secondly, he designed and developed the system of electric power to generate electricity for homes, businesses and factories – a crucial advancement in the Modern Industrialised World. Edison also produced the phonograph, which was used to create motion pictures. Edison worked on it for 52 years, and it’s said that this was his favourite invention.',
        //   source: 'TOI: Suparna Roy / TNN / Updated: Jul 13, 2023, 12:15 IST',
        //   link: 'https://en.wikipedia.org/wiki/Thomas_Edison',
        // ),
        // MyRowWidget(
        //   imagePath: 'assets/images/img_75.png',
        //   title: 'RS PURAM DEAF SCHOOL TO BE MADE RESIDENTIAL FACILITY',
        //   subtitle: 'The city corporation will convert the RS Puram deaf and dumb school into a residential school for Class XI and Class XII ',
        //   source: 'TOI: V Devanathan / May 31, 2022, 03:21 IST',
        //   link: 'https://timesofindia.indiatimes.com/city/coimbatore/rs-puram-deaf-school-to-be-made-residential-facility/articleshow/91901190.cms',
        // ),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    child: Text('Read More'),
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
        title: Text('EDUCATIONAL NEWS'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
