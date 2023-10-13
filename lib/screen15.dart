import 'package:flutter/material.dart';
import 'package:project/screen3.dart';

class Password1 extends StatefulWidget {
  const Password1({super.key});

  @override
  State<Password1> createState() => _PasswordState();
}

class _PasswordState extends State<Password1>{
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
         IconButton(onPressed: (){},
          icon: Icon(Icons.close))
        ],
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
                  Center(
                    child: Column(
                      children: [
                        TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            labelText: 'Current Password',
                            border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            labelText: "New Password",
                           border: OutlineInputBorder()
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            labelText: "Cofirm Password",
                           border: OutlineInputBorder(),
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
                        }, 
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 209, 56, 10)
                        ),
                        child: Text("SUBMIT"))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        
      ),
    );
  }
}
   
