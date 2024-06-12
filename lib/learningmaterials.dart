import 'package:edusign/HomePage.dart';
import 'package:edusign/e-books.dart';
import 'package:edusign/ebook1.dart';
import 'package:edusign/newcourse.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'courses.dart';

void main() {
  runApp(s2());
}

class s2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text and Carousel Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextAndCarouselPage(),
    );
  }
}

class TextAndCarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Materials'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(16.0),
            child: Text(
              '  WELCOME! \n\n'
                  '    LEARN to LEAD',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                width: 300,
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_5.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(150, 100, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => VII()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(150, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    child: const Text(
                      'E-BOOKS',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                height: 500,
                width: 300,
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_6.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(150, 100, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => VI()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    child: const Text(
                      'COURSES',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 150.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 600),
              viewportFraction: 1,
            ),
          ),
          // Text to display after the carousel images
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              ' With educational materials available, ISL could be learned more efficiently. Materials such as COURSES and e-BOOKS'
                  'could be accessed by all the individuals to gain skills and knowledge. \n\nLearning of Indian Sign Language are well-organized and well explained. For persons with disabilities, sign language is their primary form of communication.  '
                  'Kindly make use of these learning materials and enhnace yourselves',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}