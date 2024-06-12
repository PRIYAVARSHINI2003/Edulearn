import 'package:edusign/learnimages.dart';
import 'package:edusign/learnvideos.dart';
import 'package:edusign/videos.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'HomePage.dart';

void main() {
  runApp(s1());
}

class s1 extends StatelessWidget {
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
        backgroundColor: Colors.indigo,
        title: Text('Sign Learning'),
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
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
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
                    image: AssetImage("assets/images/img_2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(150, 100, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => g()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'IMAGES',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
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
                    image: AssetImage("assets/images/img_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(150, 100, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => v()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'VIDEOS',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
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
              autoPlayAnimationDuration: Duration(milliseconds: 500),
              viewportFraction: 1,
            ),
          ),
          // Text to display after the carousel images
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'With educational support, ISL learning can happen more efficiently. Education is also how we collect '
                        'and share all the skills and knowledge we learn individually. \n\nThe gestures used in Indian Sign Language are well-organized and codified. Every action has a fixed meaning. For persons with disabilities, sign language is their primary form of communication. The study of sign language recognition '
                        'became more attention from academics in recent times\n\n',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextSpan(
                    text:
                        '"Sign language is not a barrier \n                                it is s a  bridge"',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
