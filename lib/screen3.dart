import 'package:flutter/material.dart';
import 'package:project/3page.dart';
import 'package:project/7th.dart';

import 'package:project/coupons.dart';
import 'package:project/review.dart';

import 'screen13.dart';


class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1>createState()=> _HomePageState();
}

class  _HomePageState extends State<HomePage1> {
  int pageIndex= 0;
  final appbarname=[
  'Shoffz',
  'Super Deals',
  "favorite",
  'profile'
 ];
  final pages = [
    const Home(),
    const Deals(),
    const Fav1(),
    const Profile(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 192, 62, 22),
        title:  Text(appbarname[pageIndex],
        style: TextStyle(
          color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: NavBar(context),
      );
  }
  Container NavBar(BuildContext context){
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          IconButton(
          enableFeedback: false,
          onPressed: (){
            setState(() {
              pageIndex = 0;
            });
          },
          icon: pageIndex == 0
          ? const Icon(Icons.home,
          color: Colors.deepOrange,
          size: 30,
          )
          : const Icon(Icons.home,
          size: 30,),
          ),

       IconButton(
          enableFeedback: false,
          onPressed: (){
            setState(() {
              pageIndex = 1;
            });
          },
          icon: pageIndex == 1
          ? const Icon(Icons.percent_rounded,
          color: Colors.deepOrange,
          size: 30,
          )
          : const Icon(Icons.percent_rounded,
          size: 30,),
          ),

          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
                
              });
            },
            icon: pageIndex == 2
            ? const Icon(Icons.favorite,
            color: Colors.deepOrange,
            size: 35,)
             : const Icon( 
                    Icons.favorite, 
                    size: 35, 
                  ), 
          ), 


                   IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
                 
              });
            },
            icon: pageIndex == 3
            ? const Icon(Icons.person,
            color: Colors.deepOrange,
            size: 35,)
             : const Icon( 
                    Icons.person, 
                    size: 35, 
                  ),
                   ),
          ]
          )
        
      );
    
  }
}