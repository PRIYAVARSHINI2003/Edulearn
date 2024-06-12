import 'package:edusign/HomePage.dart';
import 'package:edusign/joincommunity.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(sch());
}

class sch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('SCHEMES'),
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
          imagePath: 'assets/images/img_85.png',
          title: 'CHECK FOR SCHEMES AND SCHOLARSHIPS',
          subtitle:
              '“Knowledge will bring you the opportunity to make a difference.”',
          // source: 'TOI: Suparna Roy / TNN / Updated: Jul 13, 2023, 12:15 IST',
          link:
              'https://www.tn.gov.in/rti/proactive/swnmp/citizen_rehab_disabled.pdf',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_81.png',
          title: 'ADIP',
          subtitle:
              'Assistance to Disabled Persons for Purchase/ Fitting of Aids and Appliances Scheme of Assistance to Disabled Persons for Purchase/Fitting of Aids and Appliances (ADIP Scheme)',
          link: 'https://disabilityaffairs.gov.in/content/page/adip.php',
        ),
        MyRowWidget(
          imagePath: 'assets/images/img_82.png',
          title: 'SARVA SHIKSHA ABHIYAN',
          subtitle:
              ' Sarva Shiksha Abhiyan (SSA) is Government of India flagship programme for achievement of Universalization of Elementary Education (UEE) in a time bound manner, as mandated by 86th amendment to the Constitution of India making free and compulsory Education to the Children of 6-14 years age group, a Fundamental Right.',
          // source: 'TOI: Shishir Arya / TNN / Feb 10, 2023, 08:56 IST',
          link: 'https://dmshahdara.delhi.gov.in/scheme/sarva-shiksha-abhiyan/',
        ),

        MyRowWidget(
          imagePath: 'assets/images/img_83.png',
          title: 'SCHOLARSHIPS FOR THE DEAF',
          subtitle:
              'Do not Let Hearing Impairment Disable Your College Education',
          // source: 'TOI: Suparna Roy / TNN / Updated: Jul 13, 2023, 12:15 IST',
          link: 'https://www.collegescholarships.org/scholarships/deaf.htm',
        ),
        // MyRowWidget(
        //   imagePath: 'assets/images/img_75.png',
        //   title: 'RS PURAM DEAF SCHOOL TO BE MADE RESIDENTIAL FACILITY',
        //   subtitle: 'The city corporation will convert the RS Puram deaf and dumb school into a residential school for Class XI and Class XII ',
        //   // source: 'TOI: V Devanathan / May 31, 2022, 03:21 IST',
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
                    child: Text('Access'),
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
        title: Text('Schemes'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
