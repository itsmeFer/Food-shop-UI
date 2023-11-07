import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badge;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class badges extends StatefulWidget {
  const badges({super.key});

  @override
  State<badges> createState() => _badgesState();
}

class _badgesState extends State<badges> {

int badgeCounter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(109.0),
              child: badge.Badge(
                child: Icon(FontAwesomeIcons.cartShopping, size: 60, color: Color.fromARGB(255, 234, 41, 41),),
                badgeColor: Colors.indigoAccent,
                badgeContent: Text(badgeCounter.toString()),
                
                
              ),
            ),
            OutlinedButton.icon(onPressed: () {_changecounter('add');}, icon: Icon(FontAwesomeIcons.plus), label: Text('add')),
             OutlinedButton.icon(onPressed: () {_changecounter('throw');}, icon: Icon(FontAwesomeIcons.minus), label: Text('throw'))
          ],
          
        ),
      ),
    );
 
  }
  _changecounter(String counter ){
if(counter == "add"){
badgeCounter++;
}
if(counter == "throw"){
badgeCounter--;
}
setState(() {
  
});
}

}

