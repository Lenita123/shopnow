
import 'package:flutter/material.dart';
import 'package:project/7th.dart';
import 'package:project/screen13.dart';



class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav>createState()=> _FavState();
}

class  _FavState extends State<Fav> {
  int pageIndex= 0;
  final pages = [
    const Fav1(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 192, 62, 22),
        title: const Text('Favorate',
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
            ? const Icon(Icons.reviews,
            color: Colors.deepOrange,
            size: 35,
            )
             : const Icon( 
                    Icons.reviews,  
                    size: 35, 
                  ),
                   ),


                   IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
                 
              });
            },
            icon: pageIndex == 4
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

