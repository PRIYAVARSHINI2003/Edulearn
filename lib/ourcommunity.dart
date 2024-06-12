//import 'package:dice/profile.dart';
import 'package:edusign/HomePage.dart';
import 'package:edusign/joincommunity.dart';
import 'package:flutter/material.dart';
//import 'skip2.dart';

class sk extends StatefulWidget {
  const sk({Key? key}) : super(key: key);

  @override
  State<sk> createState() => skip2();
}

class skip2 extends State<sk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('We Connect '),
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
                  image: AssetImage("assets/images/img_64.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(25, 160, 25, 0), //box positioning
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => li()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(130, 40), // Box size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat, // Replace with the icon you want to use
                          color: Colors.black, // Icon color
                          size: 20, // Icon size
                        ),
                        SizedBox(width: 8), // Space between icon and text
                        // onPressed: () {
                        //       Navigator.push(
                        //            context, MaterialPageRoute(builder: (_) => jc()));
                        //      },
                        Text(
                          'Connect ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16), // Space between button and text
                  RichText(
                    text: TextSpan(
                      // text: "Connect\nTogether\n",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          // text: "Enhance Yourself\n",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: EdgeInsets.fromLTRB(25, 180, 25, 0), //box positioning
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context, MaterialPageRoute(builder: (_) => jc()));
            //     },
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.white,
            //         fixedSize: Size(130, 40), //box size
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(80))),
            //     child: const Text(
            //       'Join',
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 15,
            //           fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
