import 'package:flutter/material.dart';
import 'package:project/screen15.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState()=> _ProfileEdit();
}

class _ProfileEdit extends State<ProfileEdit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Profile',
      style: TextStyle(
        color: Colors.black,
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
                  height: 10,
                ),


                Text('Sherin James',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),


                SizedBox(
                  height: 5,
                ),


                Text('7588452132',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                ),


                SizedBox(
                  height: 5,
                ),


                Text('sherinjs@gmail.com',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                  fontWeight: FontWeight.normal
                ),
                ),

                SizedBox(
                  height: 10,
                ),

                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Second Name',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'E mail',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
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
                             MaterialPageRoute(builder: (context)=>Password1()),
                             );
                          },
                      
                          style: ElevatedButton.styleFrom(
                            
                            backgroundColor:Colors.grey
                          ),
                          
                          child: const Text("CHANGE PASSWORD",
                          style: TextStyle(
                            color: Colors.black
                          ),
                          ),
                          ),
                        ) ,

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
                            
                            backgroundColor:Colors.deepOrange
                          ),
                          
                          child: const Text("UPDATE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          ),
                          ),
                        ) ,  
                ]
      ),
      )
    );
  }
}