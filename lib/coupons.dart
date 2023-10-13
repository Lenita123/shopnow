
import 'package:flutter/material.dart';

class Deals extends StatefulWidget {
  const Deals({Key?key}):super(key: key);

  @override
  State<Deals> createState()=> _Deals1();
}

class _Deals1 extends State<Deals> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Card(
                elevation:2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: 
                    Column(
           
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Valid till   25/08/2018',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                             Text("85 Used",
                         style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                         ),
                         ),
                         
                          ],
                        ),
                       Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.deepOrange,
                       ),

                       Padding(padding: EdgeInsets.all(16.0),
                       child: Row(
                        children: [
                          Image.network(
                           'https://img.freepik.com/premium-photo/futuristic-gadgets-showcase-lineup-sleek-modern-technological-devices_977107-682.jpg',
                          width:50,
                          height:50,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          children: [
                            Text('Mega offer on Footwear',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            ),
                            Text('Need an electrician service now?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                            Text('LED Lightning Solution',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                            
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left:150)),
                        Icon(Icons.favorite,
                         color: Colors.red,)
                        ],
                       ),
                       ),
                       
                         Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.black38,
                       ),

                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text('Current Deal Price',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            ElevatedButton(onPressed: (){

                            }, 
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange
                            ),
                            child: Text('VIEW DEAL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            )
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('Rs.5000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Rs.5960',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Valid till   31/08/2018',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                             Text("25 Used",
                         style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                         ),
                         ),
                         
                          ],
                        ),
                       Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.deepOrange,
                       ),

                       Padding(padding: EdgeInsets.all(16.0),
                       child: Row(
                        children: [
                          Image.network(
                           'https://img.freepik.com/premium-photo/futuristic-gadgets-showcase-lineup-sleek-modern-technological-devices_977107-682.jpg',
                          width:50,
                          height:50,
                          fit: BoxFit.cover,
                        ),
                        
                        Column(
                          children: [
                            Text('Get 50 % Discount',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            ),

                            Text('Need an electrician service now?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),

                            Text('LED Lightning Solution,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                            
                          ],
                        ),

                        Padding(padding: EdgeInsets.only(left:150)),
                        Icon(Icons.favorite_border_outlined,
                         color: Colors.black,)
                        ],
                       ),
                       ),
                       
                         Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.black38,
                       ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            Text('Current Deal Price',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            ElevatedButton(onPressed: (){

                            }, 
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange
                            ),
                            child: Text('VIEW DEAL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            )
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Text('Rs.3000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                            SizedBox(
                              width: 10,
                            ),

                            Text('Rs.5960',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
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

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Valid till   11/08/2018',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold
                            ),
                            ),

                             Text("255 Used",
                         style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                         ),
                         ),         
                          ],
                        ),

                       Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.deepOrange,
                       ),

                       Padding(padding: EdgeInsets.all(16.0),
                       child: Row(
                        children: [
                          Image.network(
                           'https://img.freepik.com/premium-photo/futuristic-gadgets-showcase-lineup-sleek-modern-technological-devices_977107-682.jpg',
                          width:50,
                          height:50,
                          fit: BoxFit.cover,
                        ),

                        Column(
                          children: [
                            Text('Upto 30 % OFF ON APPARELS',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            ),

                            Text('Need an electrician service now?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),

                            Text('LED Ligniting Solution',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                            
                          ],
                        ),
                         Padding(padding: EdgeInsets.only(left:125)),
                        Icon(Icons.favorite_border_outlined,
                         color: Colors.black,)
                        ],
                       ),
                       ),

                       
                         Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.black38,
                       ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            Text('Current Deal Price',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                            SizedBox(
                              width:200,
                            ),
                            ElevatedButton(onPressed: (){
                            
                            }, 
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange
                            ),
                            child: Text('VIEW DEAL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            )
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Text('Rs.3000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            ),

                            SizedBox(
                              width: 10,
                            ),

                            Text('Rs.5960',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}