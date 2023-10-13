

import 'package:flutter/material.dart';
import 'package:project/screen3.dart';



class Review1 extends StatefulWidget {
  const Review1({super.key});

  @override
  State<Review1> createState()=> _Review();
}

class _Review extends State<Review1> {

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         IconButton(onPressed: (){},
          icon: Icon(Icons.close,))
        ],
      // leading:ElevatedButton(onPressed: (){}, child: Icon(Icons.close,)) ,
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 243, 230, 230),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Padding(padding: const EdgeInsets.all(16.0)),
                  Center(
                    child: Column(
                      children: [
                        TextField(
                          maxLines:null,
                          decoration: InputDecoration(
                            labelText: "Name",
                            border:OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            labelText: "Write Review",
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
                          },
                      
                          style: ElevatedButton.styleFrom(
                          
                            backgroundColor: const Color.fromARGB(255, 182, 45, 3)
                          ),
                          
                          child: const Text("SUBMIT"),),
                        )

                      ],
                    ),
                  )
                ],
              )
              ]
          )
        )
      )
    );
   }
}