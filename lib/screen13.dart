import 'package:flutter/material.dart';
import 'package:project/screen14.dart';

class Profile extends StatefulWidget {
  const Profile ({super.key});

  @override
  State<Profile> createState()=> _ProfileState();
}

class _ProfileState extends State <Profile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Profile',
      style: TextStyle(
        color: Colors.black
      ),
      ),
    ),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/550x/8d/52/c5/8d52c5c35382908832ffedb21c1e63b0.jpg"),
                  radius: 40,
                ),

                SizedBox(
                  height: 30,
                ),


                Text('Sherin James',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),


                SizedBox(
                  height: 20,
                ),


                Text('7588452132',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                ),


                SizedBox(
                  height: 20,
                ),


                Text('sherinjs@gmail.com',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                  fontWeight: FontWeight.normal
                ),
                ),

                SizedBox(
                  height: 20,
                ),

                       SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context)=>ProfileEdit()),
                             );
                          },
                      
                          style: ElevatedButton.styleFrom(
                            
                            backgroundColor: const Color.fromARGB(255, 182, 45, 3)
                          ),
                          
                          child: const Text("EDIT"),
                          ),
                        )               

                ]
                  ),
          ),
        
      );
  
  }
}