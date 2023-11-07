import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto/page2.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';


class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          SafeArea(
              child: Container(
            margin: EdgeInsets.only(top: 45),
            child: Image.asset('assets/image/Illustartion.png'),
          )),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 135),
            child: DropShadowImage(image: Image.asset('assets/image/burger-10956 2.png'),borderRadius: 7,blurRadius: 5,offset: Offset(2, 6),)
            
          ),
          Container(
            padding: EdgeInsets.only(top: 500),
            child: Column(
              children: [
                SafeArea(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Track your  Comfort\nFood here',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Here You Can find a chef or dish for every\ntaste and color. Enjoy!',
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return page2();
                      }));
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 17, 155, 213),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 17)),
                  ),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
