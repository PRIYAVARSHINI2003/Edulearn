import 'dart:async';

//import 'package:dice/sign%20in.dart';
//import 'package:dice/getstartednavigation.dart';

import 'package:edusign/HomePage.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: get1(),
  ));
}

class get1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Splash Screen',
      // theme: ThemeData(
      //   backgroundColor: Colors.white,
      // ),
      home: MyHomePage(),
      // debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text(""),
      //),
      body: Container(
        //height: 20000,
        // padding: EdgeInsets.only(top: 0, bottom: 0),
        child: ListView(
          children: [
            //Text("Everyone's favourite music app", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      //padding: EdgeInsets.only(top: 0, bottom: 0),
                      //margin: EdgeInsets.all(6.0)
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_102.png"),
                          //width:200,
                          fit: BoxFit.cover,
                          //fit:BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    //Text("Everyone's favourite music app", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_99.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider

                    //4th Image of Slider
                    Container(
                      //margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_100.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      //margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_101.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 775.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 16,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1.0,
                  ),
                ),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextButton(
                      child: const Text('SIGN IN /REGISTER'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 11),

                  ],
                ),*/
                const Text(
                  "\n\n\nSUCCESSFULLY REGISTERED",
                  // mainAxisAlignment: MainAxisAlignment.end,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 250, 25, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (list())),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
