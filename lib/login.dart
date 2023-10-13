import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:project/3page.dart';
import 'package:project/api.dart';
import 'package:project/screen3.dart';



var _EmailController = TextEditingController();
var _PasswordController = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children:<Widget> [
          
     SizedBox(
      height: 80,
     ),
          Column(
            children: [
              Text("Welcome to Shoffz!",
            style: TextStyle(
              color: Color.fromARGB(255, 227, 57, 5),
              fontSize: 45,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(
              height: 20,
            ),


            Text("Your top stop destination",
            style: TextStyle(
              color: Colors.black,
            ),
            ),

            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                SizedBox(
                  width:20,
                ),

                ElevatedButton.icon(onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 225, 57, 5)
                ),
                 icon: Icon(Icons.facebook_outlined),
                  label: Text("FaceBook")
                  ),

                  SizedBox(
                    width: 160,
                  ),

                  ElevatedButton.icon(onPressed: (){

                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 225, 57, 5)
                  ),
                   icon: Icon(Icons.g_mobiledata_outlined), 
                   label: Text("Google")
                   )
              ],
            ),

            SizedBox(
              height: 10,
            ),


            Text("or login via email",
            style: TextStyle(
              color: Colors.black,
             fontSize: 15
            ),
            ),


            SizedBox(
              width: 40,
            ),


            Center(
              child: Column(
                children: [
                  TextFormField(
                    controller: _EmailController,
                    decoration: const InputDecoration(
                      hintText: "Email ID",
                      hintStyle: TextStyle(
                        color: Colors.black
                      )
                      )
                    ),
                  SizedBox(
                    width: 40,
                  ),

                  Center(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _PasswordController,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.black
                            )
                          ),
                        ),
                            SizedBox(
                            width: 100,
                            ),
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: Text("Forgot Password ?",
                          style: TextStyle(
                            color: Colors.black,
                              fontSize: 15,
                              fontStyle: FontStyle.normal
                          ),
                          ),
                        ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          SizedBox(
                            height: 80,
                          ),
                        Text("Dont have an account",
                        style: TextStyle(
                          color: Colors.black
                        ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(onPressed: (){
                            signup1();
                           nextpage();
                          },
                      
                          style: ElevatedButton.styleFrom(
                            
                            backgroundColor: const Color.fromARGB(255, 182, 45, 3)
                          ),
                          
                          child: const Text("Sign In"),),
                        )
                       ] 
                       
                       )
                      ],
                    ),
                  )
                ],
              ),
            )
          ] 
           )]
            )
     
     );
                        
  }
  void signup1() async {

             final _email = _EmailController.text;

            final _password = _PasswordController.text;

          if  (_email.isEmpty) {
           showErrorMessage('Please enter email id');
         } else if (_password.isEmpty) {
         showErrorMessage('Please enter your password');
         }  else {
          final _formData = FormData.fromMap({
       'email': _email,
        'password': _password
       });

        final _result = await ApiClass().registerUserApi(_formData);

      if (_result != null) {
       if (_result.status == true) {
         showSuccessMessage(_result.message!);
         nextpage();
               
              
                  } else {
                showErrorMessage(_result.message!);
     }
      }
           } 
            }

             void showErrorMessage(String message) {
                MotionToast.error(
                          title: const Text('Error',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                      ),
                        ),
                         description: Text(message),
                 position: MotionToastPosition.top,
                 barrierColor: Colors.black.withOpacity(0.3),
                      width: 300,
                      height: 80,
                      dismissable: false,
                      ).show(context);
                  }

                           void showSuccessMessage(String message) {
                            MotionToast.success(
                         title: const Text('Success',
                             style: TextStyle(
                             fontWeight: FontWeight.bold,
                          ),
                           ),
                             description: Text(message),
                                   position: MotionToastPosition.top,
                          barrierColor: Colors.black.withOpacity(0.3),
                                       width: 300,
                                       height: 80,
                                       dismissable: true,
                                       animationDuration: Duration(milliseconds: 1),
                                ).show(context);
                                    }
                                    Future<void> nextpage()async{
                                      return Future.delayed(Duration(seconds: 3),(){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
                                      }
                                      ) ;

                                    }
                 }
