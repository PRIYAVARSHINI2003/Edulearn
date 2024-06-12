//import 'package:dice/profile.dart';
import 'package:edusign/HomePage.dart';
import 'package:edusign/ex.dart';
import 'package:flutter/material.dart';
import 'package:edusign/code.dart';

import 'sp.dart';
//import 'skip2.dart';

class skip1 extends StatefulWidget {
  const skip1({Key? key}) : super(key: key);

  @override
  State<skip1> createState() => skip();
}

class skip extends State<skip1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Practice'),
        backgroundColor: Colors.indigo,
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
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_71.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Container(
            // padding: EdgeInsets.fromLTRB(300, 100, 17, 300),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //padding: EdgeInsets.fromLTRB(25,150,25,0),
            // children: <Widget>[
            //   TextButton(
            //     child: const Text(' SKIP',
            //         style: TextStyle(color: Colors.white, height: 1)),
            //     onPressed: () {},
            //   ),
            //   const SizedBox(width: 11),
            // ],
            // ),
            // ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(60, 0, 55, 450),
              child: RichText(
                text: TextSpan(
                  text: "Real-Time Sign  \n       Practice\n",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(35, 0, 25, 320), //box positioning
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => spi()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(130, 40), //box size
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                child: const Text(
                  'Practice',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
