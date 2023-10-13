import 'package:flutter/material.dart';
import 'package:project/screen3.dart';


class Screen10 extends StatefulWidget {
  const Screen10({Key?key}):super(key: key);

  @override
  State<Screen10> createState()=> _Screen10();
}

class _Screen10 extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Review Booking",
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body:Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    SizedBox(
                      height: 50,
                      width: 10,
                    ),
        
                    Text('Pizza Hut',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    Divider(
                     color: Colors.deepOrange,
                     thickness: 1.0,
                    ),
        
                      SizedBox(
                height: 50,
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('One Big Spicy Chicken Wrap + 1',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),

                   Padding(padding: EdgeInsets.only(left:10),
              child: Text('Rs 220',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: Text('1 voucher applied',
                  style: TextStyle(fontSize: 10,
                  fontWeight: FontWeight.w700),
                  )
                  ,),
                ],
              ),
              SizedBox(
                height:10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medium Fries + 1 Medium Coke',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
         SizedBox(
                height: 30,
                width: 60,
              ),
      
                    Row(
                      children: [
                        ElevatedButton.icon(onPressed: (){
      
                    }, 
                    style: ElevatedButton.styleFrom(
                     primary: Colors.white
                    ),
                    icon: Icon(Icons.forward),
                     label: Text("Have another code >",
                     style: TextStyle(
                      color: Colors.deepOrange,
                     ),
                     ),
                     ),
             ] 
             ),
             SizedBox(
              height: 10,
             ),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount payable',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
             Padding(padding: EdgeInsets.only(left:10),
              child: Text('Rs 220',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
              ),
               ],
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: Text('inclusive of all taxes',
                  style: TextStyle(fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrange),
                  )
                  ,),
                ],
              ),
      SizedBox(
        height: 300,
      ),
             
              SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(onPressed:(){showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  backgroundColor: Colors.deepOrange,
                  title: const Text("Congratulation",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  content: const Text("Your Booking has been confirmed.A confirmation e mail has been sent to shoffzuser@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
                      },
                      child: Container(
                        color: Color.fromARGB(255, 194, 63, 3),
                        padding: const EdgeInsets.all(14),
                        child: const Text("Close",
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ],
                ),
              );
            },
            
            child:const Text("Confrim Booking",),
                            )
              )]
          )
        )
      )
    );
  }
}
      
                        
                           

                    