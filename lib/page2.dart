import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:resto/menu1.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 70,
            ),
            child: SafeArea(
                child: Image.asset(
              'assets/image/Illustartion.png',
              fit: BoxFit.cover,
            )),
            transformAlignment: Alignment.center,
            transform: Matrix4.rotationZ(12),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 180,
              left: 53,
            ),
            child: Image.asset('assets/image/ezgif 1.png'),
          ),
          Container(
            padding: EdgeInsets.only(top: 510),
            margin: EdgeInsets.symmetric(horizontal: 55),
            child: Column(
              children: [
                SafeArea(
                    child: Text(
                  'Foodie is Where Your\nComfort Food Resides',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800, fontSize: 25),
                ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 605, left: 83),
            child: Column(
              children: [
                Text(
                  'Enjoy a fast and smooth food delivery at\nyour doorstep',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                      fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 698),
            padding: EdgeInsets.symmetric(horizontal: 130),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return menu1();
                }, ));
              },
              child: Text('Next'),
              style:
                  ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 17),backgroundColor: Color.fromARGB(255, 17, 155, 213),),
                  
            ),
          ),
        ],
      ),
    );
  }
}
