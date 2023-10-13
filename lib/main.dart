
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:project/api.dart';
import 'package:project/login.dart';

void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return const MaterialApp(
home: RegisterScreen(),
);
}
}



enum GenderType { male, female, Others }

class RegisterScreen extends StatefulWidget {
const RegisterScreen({super.key});

@override
State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
GenderType? _genderType;

final _fnameController = TextEditingController();
final _lnameController = TextEditingController();
final _emailController = TextEditingController();
final _mobileController = TextEditingController();
final _passwordController = TextEditingController();

@override
void initState() {
_genderType = GenderType.male;
super.initState();
}

@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color.fromARGB(255, 224, 128, 128),
body: SafeArea(
child: Container(
child: Padding(
padding: const EdgeInsets.all(16.0),
child: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.spaceAround,
mainAxisSize: MainAxisSize.max,
children: [
Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: const [

SizedBox(
height: 30,
),

Text(
'SEE . TAP . SHOP',
style: TextStyle(
color: Color.fromARGB(255, 226, 217, 212),
fontSize: 32,
fontStyle: FontStyle.normal,
fontWeight: FontWeight.bold),
),

SizedBox(
  height: 20,
),

Text('Your top stop destination',
style: TextStyle(
  color: Colors.white,
  fontStyle: FontStyle.normal,
  fontSize: 15
),
)
],
),

SizedBox(
  height: 20,
),

Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    SizedBox(
      width: 150,
      child: ElevatedButton.icon(onPressed: (){
    
      }, 
      style: ElevatedButton.styleFrom(
        primary: Colors.deepOrange
      ),
      icon: Icon(Icons.facebook), 
      label: Text("FaceBook")
      ),
    ),

    SizedBox(
      width: 30,
    ),

    Text('OR',
    style: TextStyle(
      color: const Color.fromARGB(255, 131, 33, 4),
      fontWeight: FontWeight.bold
    ),),

    SizedBox(
      width: 30,
    ),

    SizedBox(width: 150,
      child: ElevatedButton.icon(
        
        onPressed: (){
    
      }, 
      style: ElevatedButton.styleFrom(
        primary: Colors.deepOrange
      ),
      icon: Icon(Icons.g_mobiledata),
       label: Text("Google")),
    )
  ],
),
SizedBox(
  height: 10,
),

Divider(
  color: Colors.white,
  thickness: 1.0,
),

const SizedBox(
height: 35,
),
Center(
child: Column(
children: [
TextFormField(
controller: _fnameController,
decoration: const InputDecoration(
hintText: 'First Name',
hintStyle: TextStyle(
  color: Colors.white
)
),
),

const SizedBox(
height: 35,
),

TextFormField(
controller: _lnameController,
decoration: const InputDecoration(
hintText: 'last Name',
 hintStyle: TextStyle(
  color: Colors.white
 )
 ),
),

const SizedBox(
height: 35,
),

TextFormField(
controller: _emailController,
decoration: const InputDecoration(
hintText: 'Email ID', hintStyle: TextStyle(
  color: Colors.white
)
),
),

const SizedBox(
height: 35,
),
TextFormField(
controller: _mobileController,
keyboardType: TextInputType.number,
decoration: const InputDecoration(
hintText: 'Mobile Number',
hintStyle: TextStyle(
  color: Colors.white
)
),
),

const SizedBox(
height: 35,
),

Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
  const Text('Gender',
  style: TextStyle(
    color: Colors.white
  ),
  ),

  SizedBox(
    height: 20,
  ),
  
Radio(
value: GenderType.male,
groupValue: _genderType,
onChanged: (newValue) {
setState(() {
_genderType = GenderType.male;
});
}),
const Text('Male',
style: TextStyle(
  color: Colors.white
),
),

Radio(
value: GenderType.female,
groupValue: _genderType,
onChanged: (newValue) {
setState(() {
_genderType = GenderType.female;
});
}),

const Text('Female',
style: TextStyle(
  color: Colors.white
),),

Radio(
value: GenderType.Others,
groupValue: _genderType,
onChanged: (newValue) {
setState(() {
_genderType = GenderType.Others;
});
}),

const Text('Others',
style: TextStyle(
  color: Colors.white
),)
],
),

const SizedBox(
height: 35,
),
TextFormField(
controller: _passwordController,
obscureText: true,
decoration: const InputDecoration(
hintText: 'Create Password',
hintStyle: TextStyle(
  color: Colors.white
)),
),
],
),
),
const SizedBox(
height: 35,
),
Center(
child: Column(
children: [
SizedBox(
height: 50,
width: 200,
child: ElevatedButton(
onPressed: () {
HomePage();
},
style: ElevatedButton.styleFrom(

backgroundColor: Colors.deepOrange),
child: const Text(
'Sign Up',
style: TextStyle(
  fontSize: 20
),
),
),
),
SizedBox(
  height: 10,
),

Center(
  child: Column(children: [
    SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
        onPressed: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=> Login()));
      },
      style: ElevatedButton.styleFrom(
        
        backgroundColor: Colors.deepOrange
      ),
      child: const Text('Login',
      style: TextStyle(
        fontSize: 20
      ),
      ),
      ),
    )
  ],),
)


],
),
)
],
),
),
),
)),
);
}

void HomePage() async {
final _fname = _fnameController.text;
final _lname = _lnameController.text;
final _email = _emailController.text;
final _mobile = _mobileController.text;
final _gender = _genderType;
final _password = _passwordController.text;

if (_fname.isEmpty) {
showErrorMessage('Please enter first name');
} else if (_lname.isEmpty) {
showErrorMessage('Please enter last name');
} else if (_email.isEmpty) {
showErrorMessage('Please enter email id');
} else if (_mobile.isEmpty) {
showErrorMessage('Please enter mobile number');
} else if (_password.isEmpty) {
showErrorMessage('Please enter your password');
} else {
final _formData = FormData.fromMap({
'firstname': _fname,
'lastname': _lname,
'email': _email,
'mobile': _mobile,
'gender': _gender,
'password': _password
});

final _result = await ApiClass().registerUserApi(_formData);

if (_result != null) {
if (_result.status == true) {
showSuccessMessage(_result.message!);
// Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
// return HomeScreen();
//}
// ));
} else {
showErrorMessage(_result.message!);
}
}
}
}

void showErrorMessage(String message) {
MotionToast.error(
title: const Text(
'Error',
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
title: const Text(
'Success',
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
}