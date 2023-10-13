

import 'package:flutter/material.dart';

class Fav1 extends StatefulWidget {
  const Fav1({super.key});

  @override
  State<Fav1>createState()=> _Fav1State();
}

class  _Fav1State extends State<Fav1>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
                elevation:2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: 
                    Column(
           
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      //   Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text('Valid till   25/08/2018',
                      //       style: TextStyle(
                      //         color: Colors.deepOrange,
                      //         fontWeight: FontWeight.bold
                      //       ),
                      //       ),
                      //        Text("85 Used",
                      //    style: TextStyle(
                      //     color: Colors.black,
                      //     fontWeight: FontWeight.bold
                      //    ),
                      //    ),
                         
                      //     ],
                      //   ),
                      //  Container(
                      //   height: 2,
                      //   width: double.infinity,
                      //   color: Colors.deepOrange,
                      //  ),

                       Padding(padding: EdgeInsets.all(16.0),
                       child: Row(
                        children: [
                          Image.network(
                           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AGITUF3syVhV5iJQJSSiJkbRm-mwXIxZWg&usqp=CAU',
                          width:100,
                          height:100,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 100),
                           child: Text('Electronic Hut',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            ),),
                            Padding(padding: EdgeInsets.only(left:230),
                            child: Icon(Icons.delete,
                            color: Colors.red,),
                            ),
                            Padding(padding: EdgeInsets.only(right: 100),
                    child:        Text('3 Km - UB City, Bengaluru',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                        ),
                            Padding(padding: EdgeInsets.only(right: 100),
                           child: Text('Cost for two - 60000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),),
                            Padding(padding: EdgeInsets.only(right: 100),
                       child:     Text('Cuisines - Italian',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10
                            ),)),
                            
                          ],
                        ),
                        
                        ],
                       ),
                       ),
                       
                        

                        SizedBox(height: 10),
                        Row(
                          children: [
                            // Text('Current Deal Price',
                            // style: TextStyle(
                            //   color: Colors.black38,
                            //   fontSize: 15,
                            //   fontWeight: FontWeight.normal
                            // ),
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(onPressed: (){

                            }, 
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange
                            ),
                            child: Text('DEALS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                  
                            ),
                            Text('UPTO 15% off on Open Voucher',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('121,118 bought',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 180),
                            child: Text("Added to Favorite",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),),
                            Padding(padding: EdgeInsets.only(left:5),
                            child: Icon(Icons.favorite,
                            color: Colors.red,),)
                          ],
                        )
                        // Row(
                        //   children: [
                        //     Text('Rs.5000',
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //     ),
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     Text('Rs.5960',
                        //     style: TextStyle(
                        //       color: Colors.black54,
                        //       fontSize: 10,
                        //     ),
                        //     )
                        //   ],
                        // )
                      ],
                    ),
              ),
          ],
        ),
      ),
    );
  }
}