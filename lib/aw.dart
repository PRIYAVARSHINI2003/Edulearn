import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'learningmaterials.dart';

void main() {
  runApp(aw());
}

class aw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyImageTextButtonScreen(),
    );
  }
}

class MyImageTextButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Awareness'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => list()));
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Image at the top
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                child: Image.asset(
                  'assets/images/img_92.png', // Replace with your image URL
                  width: 310, // Adjust the width as needed
                  height: 150, // Adjust the height as needed
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),

              // Text below the image
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Disability Act-2016',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'The Disability  Act fixes responsibility of the Central and State Governments, local bodies to provide services, facilities to people with disabilities to provide equal opportunities for participating as productive citizens of the country.',
                      style: TextStyle(
                        fontSize: 17, // Custom font size
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Custom text color
                      ),
                    ),
                    SizedBox(height: 10),
                    buildBulletText(
                      'Equality and Non-discrimination',
                    ),
                    buildBulletText(
                      'Right to Inclusiveness',
                    ),
                    buildBulletText(
                      'Equal Opportunity in Employment',
                    ),
                    buildBulletText(
                      'Accessibility',
                    ),
                    buildBulletText(
                      'Education',
                    ),
                    buildBulletText(
                      'Skill Development and Employment',
                    ),
                    buildBulletText(
                      'Healthcare',
                    ),
                    buildBulletText(
                      'Legal Capacity',
                    ),
                    buildBulletText(
                      'Political Rights',
                    ),
                    buildBulletText(
                      'Social Security and Rehabilitation',
                    ),
                    buildBulletText(
                      'National and State Commissions',
                    ),
                  ],
                ),
              ),

              // Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
                onPressed: () {
                  // Add your button click logic here
                },
                child: Text('For More Details'),
              ),

              // Text link below the button
              GestureDetector(
                onTap: () {
                  // Add your link tap logic here
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Apply here for PWD Certificate', // Replace with your link text
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue, // Link text color
                      decoration:
                          TextDecoration.underline, // Underline the link
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 10, // Adjust the width of the bullet point
          child: Text(
            '•',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 5), // Add some space between the bullet and text
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
