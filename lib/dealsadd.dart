import 'package:flutter/material.dart';
import 'package:project/screen10.dart';

class Screen9 extends StatefulWidget {
  const Screen9({Key?key}):super(key: key);

  @override
  State<Screen9> createState()=> _Screen9();
}

class _Screen9  extends State<Screen9> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(Icons.share,))
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(
              height:90,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://img1.wsimg.com/isteam/ip/119e2d1b-0ed9-4a03-a51a-334684501753/news12_5.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true'),
                  fit: BoxFit.fill
              ),
            ),
               ),
          ),
          
          SizedBox(
            height:5,
          ),

          Text("Pizza Hut",
          style: TextStyle(
            color: Colors.black,
            fontSize:15,
            fontWeight: FontWeight.bold
          ),
          ),
          Text('MG Road near MP Mall, Ernakulam South',
          style: TextStyle(
            color: Colors.black,
            fontSize:10,
            fontWeight: FontWeight.normal
          ),
          ),

          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.star,
                      color: Colors.black,
                      )
                    ),
                    Container(
                      child: Text('4.8 ratings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 90),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top:10),
                            child: Icon(Icons.pin_drop,
                            color: Colors.black,
                            ),
                          ),
                          Container(
                            child: Text('12.5 km away',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(left: 90),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Icon(Icons.favorite,
                                  color: Colors.red,),
                                ),
                                Container(
                                  child: Text('88 favorited this',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          )
                        ],
                      ),
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
            color: Colors.black38,
            thickness: 1.0,
          ),

          SizedBox(height:5), 
              
            
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
                            Text('Valid on All days',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                             Text("98 Bought",
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
                        Column(
                          children: [
                            Row(
                            
                              children: [
                                Text('One Big Spicy Chicken Wrap + 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text('16% off',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                             Padding(padding: EdgeInsets.only(right: 100),
                           child: Text('Medium Fries + 1 Medium Cake',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            ),),

                            Padding(padding: EdgeInsets.only(left:300),
                            child: Text('Rs.320',
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                            ),),
                            
                            ),
                            Padding(padding: EdgeInsets.only(left: 300),
                            child:Text('Rs 270',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),),

                            Padding(padding: EdgeInsets.only(right: 150),
                           child: Text('Timing \t\t\t 11 AM - 11 PM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                            ),
                          Padding(padding: EdgeInsets.only(left: 260),
                          child: Text("Inc . of all taxes",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),),
                            Padding(padding: EdgeInsets.only(right: 150),
                           child: Text('Valid for 1 Person',
                            style: TextStyle(color: Colors.black,
                            fontSize: 10),
                            ),
                            ),
                            
                          ],
                        ),
                        
                        
                        ],
                       ),
                       ),
                       
                         Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.black38,
                       ),
                       Row(
                            children: [
                              SizedBox(
                                      child: ElevatedButton(onPressed: (){
                                      },
                                  
                                      style: ElevatedButton.styleFrom(
                                        
                                        backgroundColor: Colors.white
                                      ),
                                      
                                      child: const Text("Details",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal
                                      ),
                                      ),
                                      ),
                                    ),
                                    ElevatedButton(onPressed: (){

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                     child: Text('Menu',
                                     style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal
                                     ),
                                     )
                                     ),

                                     SizedBox(
                                      width: 100,
                                     ),

                                     ElevatedButton(onPressed: (){

                                     },
                                     style: ElevatedButton.styleFrom(
                                      primary: Colors.deepOrange
                                     ),
                                      child: Text('-',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      )
                                      ),

                                      SizedBox(
                                        width: 10,
                                      ),

                                      Text('1',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),

                                      ElevatedButton(onPressed: (){

                                      }, 
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.deepOrange
                                      ),
                                      child: Text('+',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                      )
                                      ),
                          ],
                        ),
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
                            Text('Valid on All days',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                             Text("74 Bought",
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
                        Column(
                          children: [
                            Row(
                            
                              children: [
                                Text('One Big Spicy Chicken Wrap + 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Text('16% off',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                             Padding(padding: EdgeInsets.only(right: 100),
                           child: Text('Medium Fries + 1 Medium Cake',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            ),),

                            Padding(padding: EdgeInsets.only(left:300),
                            child: Text('Rs.320',
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                            ),),
                            
                            ),
                            Padding(padding: EdgeInsets.only(left: 300),
                            child:Text('Rs 220',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),),

                            Padding(padding: EdgeInsets.only(right: 150),
                           child: Text('Timing \t\t\t 11 AM - 11 PM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            ),
                            ),
                          Padding(padding: EdgeInsets.only(left: 260),
                          child: Text("Inc . of all taxes",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),),
                            Padding(padding: EdgeInsets.only(right: 150),
                           child: Text('Valid for 1 Person',
                            style: TextStyle(color: Colors.black,
                            fontSize: 10),
                            ),
                            ),
                            
                          ],
                        ),
                        
                        
                        ],
                       ),
                       ),
                       
                         Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.black38,
                       ),
                       
                        Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(onPressed: (){

                                }, 
                                style: ElevatedButton.styleFrom(
                                 primary: Colors.white
                                ),
                                child: Text('Details',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                                ),
                                SizedBox(
                                  width: 10,
                                ),

                                ElevatedButton(onPressed: (){

                                }, 
                                style: ElevatedButton.styleFrom(
                                 primary: Colors.white
                                ),
                                child: Text('Menu',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                                ),
                                
                                SizedBox(
                                  width: 160,
                                ),
                                ElevatedButton(onPressed: (){

                                }, 
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange
                                ),
                                child: Text('Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
              ),
                         SizedBox(
                          height: 10,
                         ),

                              Divider(
                                color: Colors.black38,
                                thickness: 1.0,
                              ),
      SizedBox(
        height: 10,
      ),
                          Padding(
                            padding: const EdgeInsets.only(right:300),
                            child: Column(
                              children: [
                                Text('1 Item in cart',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 10
                                ),
                                ),
                                Text('Rs. 220',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Text('Inc. of all  taxes',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 10,
                                ),
                                ),
                                    ],
                                  ),
                                  
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 200),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                         height: 20,
                                         width: 150,
                                         child: ElevatedButton(onPressed: (){
                                      Navigator.push(context,
                                       MaterialPageRoute(builder: (context)=>Screen10()),
                                       );
                                         },
                                                          
                                         style: ElevatedButton.styleFrom(
                                      
                                      backgroundColor: const Color.fromARGB(255, 182, 45, 3)
                                          ),
                                                              
                                            child: const Text("Review Booking",
                                            style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal
                                                              ),
                                                              ),
                                                              ),
                                                            ),
                              ],
                            
                            ),
                          ),
                          

        

                            ],
                            ),
                        );       
                      }
                     }