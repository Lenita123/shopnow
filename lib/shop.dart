import 'package:flutter/material.dart';
import 'package:project/list.dart';

import 'package:project/screen12.dart';
import 'package:project/dealsadd.dart';


class Shop extends StatefulWidget {
  const Shop({Key?key}):super(key: key);

  @override
  State<Shop> createState()=> _Shop();
}

class _Shop  extends State<Shop> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 229, 229),
        foregroundColor: Colors.black,
        actions: [
          Padding(padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.share,
          color: Colors.black,
          ),
          )
        ],
    ),

    body: SafeArea(child: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          Center(
            child: Padding(padding: EdgeInsets.only(left:20,right:20),
            child: Image.network('https://img1.wsimg.com/isteam/ip/119e2d1b-0ed9-4a03-a51a-334684501753/news12_5.jpg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=h:1000,cg:true'),
            ),
          ),

          const Text('ELECTRONICS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ),

          const Align(
            alignment: AlignmentDirectional.topStart,
            child: Text('Location details',
            style: TextStyle(
              fontSize: 10
            ),),
          ),
          Padding(padding: EdgeInsets.only(top: 15),
          child: Row(
            children: [
              const Icon(Icons.star),
              const Text('4.2 rating'),
              const Spacer(),
              const Icon(Icons.pin_drop),
              const Text('1.25 km away'),
              const Spacer(),
              Icon(Icons.favorite,
              color: Colors.red[200],),
              const Text('88 favorite this')
            ],
          ),),
          const Divider(
            color: Colors.black,
            thickness: 1.0,
          ),

          Row(
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10),
                  child: Container(
                    height: 25,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.greenAccent
                      )
                  ]  
                  ),
                  child: const Padding(padding: EdgeInsets.only(top: 5,left: 3,right: 3),
                  child: Text('UPTO 45% OFF',
                  style: TextStyle(color:Colors.greenAccent,
                  fontWeight: FontWeight.bold),
                  ),
                  ),

                  ),
                  ),
          const Padding(padding: EdgeInsets.only(top: 13),
          child: Text('FOOD AND BEVERAGES',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),),
          const Padding(padding: EdgeInsets.only(top: 5),
          child:Text('+12 MORE DEALS'),
          )
                ],
              ),

              const Spacer(),
              ElevatedButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> Screen9()));
              }, child: Text('VIEW DEALS',),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange
              ),
              )
              ]
              ),
              const Padding(padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: Colors.black,
                thickness: 1.0,
              ),),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(padding: EdgeInsets.only(left: 20,top: 30),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)
                    )
                  ),
                  child:  const Padding(padding: EdgeInsets.only(left: 9,top: 5),
                  child: Text('Most Popular',
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold),
                  ),
                  ),
                ),
                ),
              ),
               Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.deepOrange
                  )
                ),
                child: ListView.separated(
                  separatorBuilder:((context, index)=> Divider(
                  thickness:1.0,
                  color:Colors.deepOrange,
                )
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context , int index){
                  return Padding(padding: EdgeInsets.only(
                    left: 5,right: 5
                  ),
                  child: Row(
                    children: [
                      Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGFx_Bxr8qtWE4ihldKi5TvX6cIXovVB_DOA&usqp=CAU',
                      height: 60,
                      width: 60,),
                       Spacer(),

                       Column(
                         children: [
                           Text(shopoffers[index],
                           style: TextStyle(
                             fontWeight: FontWeight.bold
                           ),),
                           Text(offdsc[index]),
                           Padding(padding: EdgeInsets.only(top: 10),
                           child:Row(
                            children: [
                              Text(desc[index]),
                              Text(validon[index],
                              style: TextStyle(
                                color: Colors.deepOrange
                              ),)
                            ],
                           ),)
                         ],
                       )   ,
                       Spacer(),
                       Column(
                        children: [
                          Row(
                            children: [
                              Text(cutprice[index],
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough
                              ),),
                              Text(realprice[index],
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange
                              ),)
                              
                            ],
                          ),
                          Text(save[index]),
                          ElevatedButton(onPressed: (){

                          }, child: Text("View",),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange
                          ),
                          )
                        ],
                       )             
                    ],
                  ),
                  );
                },
                ),
               ),
               Padding(padding: EdgeInsets.only(
                top: 10
               ),
               child: TextButton(onPressed: (){

               },
               child: Text('VIEW ALL',
               style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.orange
               ),),),),
               Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('About this place',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    const Text('Timing'),
                    const Text('Mon - Sun \t\t\t\t\t\t 11 AM - 11 PM',),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    ),
                  ],
                ),
                ),
               ),
               Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Average cost',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    const Text('Cost for two \t\t\t\t\t\t 500'),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),),
                    const Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Text('Find Us',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),),
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Color.fromARGB(255, 202, 189, 189),
                      child: Text('Map'),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20),
                    child: Text('Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Pallath Square , Near Akshay Granites,Vhakkaraparambu,Vytilla,NH Bypass Road , Ernakulam',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16
                    ),),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    ),
                    Row(
                      children: [
                        const Text('Reviews(18)',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                        Spacer(),
                        TextButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>Review1()));
                        }, child: Text('Write review',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.deepOrange
                        ),
                        )
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Vinay Mohan',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Review..................'),
                    ),
                    TextButton(onPressed: (){
                      
                    }, child: Text('Read all reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange
                    ),)),
                    const Padding(padding: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('More info',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Amenities',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Takeaway',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),),),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Seating',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('AC Indoor Seating',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),),),
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text('Information shown above is provided by merchant on shoffz is not liable for its accuracy',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),),),
                  ],
                ),),
               )
            ],
          )
      ),
      ),
    )
    );
  }
}