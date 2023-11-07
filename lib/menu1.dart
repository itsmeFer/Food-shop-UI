import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:badges/badges.dart' as badge;
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class menu1 extends StatefulWidget {
  const menu1({super.key});

  @override
  State<menu1> createState() => _menu1State();
}

class _menu1State extends State<menu1> {
  final _menu = '-1';
  int badgescount = 0;
  int badgescountt = 0;
  int badgescounttt = 0;
  int badgescountttt = 0;
  int badgescounttttt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 6, 155, 219),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GNav(
              padding: EdgeInsets.all(16),
              gap: 10,
              backgroundColor: Color.fromARGB(255, 6, 155, 219),
              color: Colors.white,
              activeColor: Color.fromARGB(255, 187, 224, 241),
              iconSize: 20,
              tabBackgroundColor: Colors.white24,
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                  margin: EdgeInsets.only(left: 13),
                ),
                GButton(
                  icon: FontAwesomeIcons.heart,
                  text: 'Favorite',
                ),
                GButton(
                  icon: FontAwesomeIcons.user,
                  text: 'Profile',
                  margin: EdgeInsets.only(right: 13),
                )
              ]),
        ),
      ),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Find Your\nFavourite Food',
                    style: GoogleFonts.openSans(
                        fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
                prefixIcon: Icon(
                  FontAwesomeIcons.search,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              value: _menu,
              items: [
                DropdownMenuItem(
                  child: Text(
                    '- Select your Favorite Menu! -',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  value: '-1',
                ),
                DropdownMenuItem(
                  child: Text('Burger'),
                  value: '1',
                ),
                DropdownMenuItem(
                  child: Text('Rendang'),
                  value: '2',
                ),
                const DropdownMenuItem(
                  child: Text('Ayam Goreng'),
                  value: '3',
                ),
                const DropdownMenuItem(
                  child: Text('Sate Padang'),
                  value: '4',
                ),
                DropdownMenuItem(
                  child: Text('Sosis Telur'),
                  value: '5',
                ),
              ],
              onChanged: (v) {},
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (_, i) {
                    return Column(
                      children: [
                        Container(
                          child: ScrollLoopAutoScroll(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 190,
                                    width: 360,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.center,
                                            colors: [
                                              Color.fromARGB(255, 47, 99, 203),
                                              Color.fromARGB(255, 17, 155, 213),
                                            ]),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(24.0),
                                              child: Container(
                                                height: 140,
                                                width: 146,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text('My Wallet',
                                                            style: GoogleFonts
                                                                .openSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        19)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 8.7),
                                                        child: Text(
                                                          'Rp70.000',
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 30,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: const Text(
                                                              'Tap for history'))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 75),
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Colors.white)),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    FontAwesomeIcons.arrowUp,
                                                    size: 20,
                                                  ),
                                                  color: const Color.fromARGB(
                                                      255, 17, 155, 213),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              'Pay',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 75),
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Colors.white)),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    FontAwesomeIcons.plus,
                                                    size: 20,
                                                  ),
                                                  color: const Color.fromARGB(
                                                      255, 17, 155, 213),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              'Top Up',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 75),
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: Colors.white)),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    FontAwesomeIcons.rocket,
                                                    size: 18,
                                                  ),
                                                  color: const Color.fromARGB(
                                                      255, 17, 155, 213),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              'Explorer',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                      ],
                                    )),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  height: 190,
                                  width: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/image/loopfries 1.png',
                                          cacheHeight: 168,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 39),
                                              child: Text(
                                                'KHUSUS KAUM MISQUEEN',
                                                style: GoogleFonts.rajdhani(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 35),
                                              child: Text(
                                                'SEKARANG BISA BELI\nKENTANG GORENG',
                                                style: GoogleFonts.rajdhani(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 25.0,
                                                          right: 45),
                                                  child: Text(
                                                    'HANYA',
                                                    style: GoogleFonts.rajdhani(
                                                        fontSize: 28,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: Text(
                                                    'RP10.000',
                                                    style: GoogleFonts.rajdhani(
                                                      fontSize: 30,
                                                      color:
                                                          Colors.yellowAccent,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.center,
                                          colors: [
                                            Color.fromARGB(255, 255, 137, 97),
                                            Color.fromARGB(255, 252, 115, 81)
                                          ])),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  height: 190,
                                  width: 360,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 119, 38, 212)),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          'assets/image/loopdonat.png',
                                          cacheWidth: 200,
                                          height: 200,
                                          width: 150,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 25.0),
                                            child: Text(
                                              'BARU!',
                                              style: GoogleFonts.rajdhani(
                                                fontSize: 40,
                                                color: Color.fromARGB(
                                                    255, 255, 109, 214),
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 45),
                                            child: Text(
                                              'DONUT MADE FROM',
                                              style: GoogleFonts.rajdhani(
                                                fontSize: 19,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 140),
                                            child: Text(
                                              'INDIA',
                                              style: GoogleFonts.rajdhani(
                                                fontSize: 25,
                                                color: Color.fromARGB(
                                                    255, 251, 88, 224),
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'DIBUAT DENGAN RESEP RAHASIA',
                                            style: GoogleFonts.rajdhani(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  height: 190,
                                  width: 360,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Image.asset(
                                          'assets/image/loopburger 1.png',
                                          cacheWidth: 150,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 35.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'LAGI PROMO BOSKU!',
                                              style: GoogleFonts.rajdhani(
                                                  fontSize: 23,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 75),
                                              child: Text(
                                                'HANYA \n12.000 RIBU',
                                                style: GoogleFonts.rajdhani(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Text(
                                                'SPESIAL DAGING MANUSIA!',
                                                style: GoogleFonts.rajdhani(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 3, 66, 137)),
                                )
                              ],
                            ),
                            scrollDirection: Axis.horizontal,
                            delayAfterScrollInput: Duration(seconds: 5),
                            duration: Duration(seconds: 400),
                            gap: 40,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Menu',
                          style: GoogleFonts.openSans(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                       Text(
                          'Menu',
                          style: GoogleFonts.openSans(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 150, 215, 255),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(3, 3)),
                                      ],
                                    ),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/image/icons8-burger-48.png',
                                        cacheHeight: 80,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Text(
                                          "Rp12.000",
                                          style: GoogleFonts.openSans(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                  255, 24, 115, 199)),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Text(
                                          "Burger ",
                                          style: GoogleFonts.openSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Text(
                                          "with daging manusia",
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                            height: 45,
                                            width: 200,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Color.fromARGB(255, 113, 210, 255).withOpacity(0.3),),
                                            
                                            child: Row(
                                              
                                              children: [
                                                Spacer(),
                                                OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterr('addd');
                                                    },
                                                    
                                                    icon: Icon(
                                                        FontAwesomeIcons.plus, size: 10,),
                                                    label: Text('add')),
                                                    Spacer(),
                                                    badge.Badge(
                                                      badgeColor: Colors.white54,
                                                      badgeContent: Text(badgescountt.toString()),
                                                      child: Icon(FontAwesomeIcons.cartShopping, size: 20, color: Color.fromARGB(255, 2, 111, 161),),
                                                    ),
                                                   Spacer(),
                                                    OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterr('disss');
                                                    },
                                                    icon: Icon(
                                                        FontAwesomeIcons.minus, size: 10,),
                                                    label: Text('diss')),
                                                    Spacer(),
                                              ],
                                              
                                            ),
                                          )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 150, 215, 255),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(3, 3)),
                                      ],
                                    ),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/image/icons8-beef-rendang-64.png',
                                        cacheHeight: 80,
                                      ),
                                      
                                    ),
                                    
                                  ),
                                  
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Rp45.000",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 24, 115, 199)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Rendang",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Indonesian Food spicy",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                         Container(
                                            height: 45,
                                            width: 200,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Color.fromARGB(255, 113, 210, 255).withOpacity(0.3),),
                                            
                                            child: Row(
                                              
                                              children: [
                                                Spacer(),
                                                OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterrr('adddd');
                                                    },
                                                    
                                                    icon: Icon(
                                                        FontAwesomeIcons.plus, size: 10,),
                                                    label: Text('add')),
                                                    Spacer(),
                                                    badge.Badge(
                                                      badgeColor: Colors.white54,
                                                      badgeContent: Text(badgescounttt.toString()),
                                                      child: Icon(FontAwesomeIcons.cartShopping, size: 20, color: Color.fromARGB(255, 2, 111, 161),),
                                                    ),
                                                   Spacer(),
                                                    OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterrr('dissss');
                                                    },
                                                    icon: Icon(
                                                        FontAwesomeIcons.minus, size: 10,),
                                                    label: Text('diss')),
                                                    Spacer(),
                                              ],
                                              
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                       
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 150, 215, 255),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(3, 3)),
                                      ],
                                    ),
                                    child: Container(
                                     
                                      child: Image.asset(
                                        'assets/image/icons8-fried-chicken-64.png',
                                        cacheHeight: 80,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Rp25.000",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 24, 115, 199)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                                
                                            child: Text(
                                              "Fried Chicken ",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "With Chicken Tiren",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Container(
                                            height: 45,
                                            width: 200,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Color.fromARGB(255, 113, 210, 255).withOpacity(0.3),),
                                            
                                            child: Row(
                                              
                                              children: [
                                                Spacer(),
                                                OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounter('add');
                                                    },
                                                    
                                                    icon: Icon(
                                                        FontAwesomeIcons.plus, size: 10,),
                                                    label: Text('add')),
                                                    Spacer(),
                                                    badge.Badge(
                                                      badgeColor: Colors.white54,
                                                      badgeContent: Text(badgescount.toString()),
                                                      child: Icon(FontAwesomeIcons.cartShopping, size: 20, color: Color.fromARGB(255, 2, 111, 161),),
                                                    ),
                                                   Spacer(),
                                                    OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounter('diss');
                                                    },
                                                    icon: Icon(
                                                        FontAwesomeIcons.minus, size: 10,),
                                                    label: Text('diss')),
                                                    Spacer(),
                                              ],
                                              
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 150, 215, 255),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(3, 3)),
                                      ],
                                    ),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/image/icons8-satay-64.png',
                                        cacheHeight: 80,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Rp1.000.000",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 24, 115, 199)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Roll Egg ",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              " With Special Telur T-rex",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 45,
                                            width: 200,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Color.fromARGB(255, 113, 210, 255).withOpacity(0.3),),
                                            
                                            child: Row(
                                              
                                              children: [
                                                Spacer(),
                                                OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterrrr('addddd');
                                                    },
                                                    
                                                    icon: Icon(
                                                        FontAwesomeIcons.plus, size: 10,),
                                                    label: Text('add')),
                                                    Spacer(),
                                                    badge.Badge(
                                                      badgeColor: Colors.white54,
                                                      badgeContent: Text(badgescountttt.toString()),
                                                      child: Icon(FontAwesomeIcons.cartShopping, size: 20, color: Color.fromARGB(255, 2, 111, 161),),
                                                    ),
                                                   Spacer(),
                                                    OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterrrr('disssss');
                                                    },
                                                    icon: Icon(
                                                        FontAwesomeIcons.minus, size: 10,),
                                                    label: Text('diss')),
                                                    Spacer(),
                                              ],
                                              
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 150, 215, 255),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(3, 3)),
                                      ],
                                    ),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/image/icons8-sausage-64.png',
                                        cacheHeight: 80,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Rp7.000",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 24, 115, 199)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Sausage",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              "Hanya sosis biasah",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                                                                Container(
                                            height: 45,
                                            width: 200,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Color.fromARGB(255, 113, 210, 255).withOpacity(0.3),),
                                            
                                            child: Row(
                                              
                                              children: [
                                                Spacer(),
                                                OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterrrrr('adddddd');
                                                    },
                                                    
                                                    icon: Icon(
                                                        FontAwesomeIcons.plus, size: 10,),
                                                    label: Text('add')),
                                                    Spacer(),
                                                    badge.Badge(
                                                      badgeColor: Colors.white54,
                                                      badgeContent: Text(badgescounttttt.toString()),
                                                      child: Icon(FontAwesomeIcons.cartShopping, size: 20, color: Color.fromARGB(255, 2, 111, 161),),
                                                    ),
                                                   Spacer(),
                                                    OutlinedButton.icon(
                                                    onPressed: () {
                                                      _changecounterrrrr('dissssss');
                                                    },
                                                    icon: Icon(
                                                        FontAwesomeIcons.minus, size: 10,),
                                                    label: Text('diss')),
                                                    Spacer(),
                                              ],
                                              
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }))
        ],
      ),
    );
  }
  _changecounter (String counter) {
if (counter == 'add'){
  badgescount ++;
}
if (counter == 'diss'){
  badgescount --;
}
setState(() {
  
});
  }
  _changecounterr (String counter) {
if (counter == 'addd'){
  badgescountt ++;
}
if (counter == 'disss'){
  badgescountt --;
}
setState(() {
  
});
  }
   _changecounterrr (String counter) {
if (counter == 'adddd'){
  badgescounttt ++;
}
if (counter == 'dissss'){
  badgescounttt --;
}
setState(() {
  
});
  }
   _changecounterrrr (String counter) {
if (counter == 'addddd'){
  badgescounttttt ++;
}
if (counter == 'disssss'){
  badgescounttttt --;
}
setState(() {
  
});
}
_changecounterrrrr (String counter) {
if (counter == 'adddddd'){
  badgescounttttt ++;
}
if (counter == 'dissssss'){
  badgescounttttt --;
}
setState(() {
  
});
}
}