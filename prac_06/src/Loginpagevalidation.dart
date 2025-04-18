import 'package:flutter/material.dart'; import 'custom_gesture.dart';
class loginpagevalidation extends StatefulWidget { const loginpagevalidation({super.key}); @override
State<loginpagevalidation> createState() => _loginpagevalidationState();
}

class _loginpagevalidationState extends State<loginpagevalidation> { final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); @override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: const Text("LAB 6"),
backgroundColor: Color.fromARGB(255, 212, 0, 0), foregroundColor: Colors.black, automaticallyImplyLeading: true,
),
body: Container(
alignment: Alignment.center, decoration: const BoxDecoration(
gradient: LinearGradient( colors: [
Color.fromARGB(255, 34, 139, 192),
Color.fromARGB(255, 8, 60, 155)
],
begin: Alignment.topLeft, end: Alignment.topRight,
)),
child: SingleChildScrollView(
	child: Form(	
 
key: _formKey, child: Column( children: [
ClipRRect(
borderRadius: BorderRadius.circular(20), child: Image.asset( "images/phoenix.jpg",
fit: BoxFit.contain, width: 200,
height: 200,
)),
const SizedBox(height: 15),
const Text("Login to your account", style: TextStyle(color: Colors.white),), const SizedBox(height: 20),
Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5), borderRadius: const BorderRadius.only(
topLeft: Radius.circular(20), bottomRight: Radius.circular(20),
),
),
child: TextFormField(
keyboardType: TextInputType.number, decoration: const InputDecoration( hintText: "Username or email",
),
validator: (value) {
if (value == null || value.isEmpty) {
return 'Please enter your username and email';
}
return null;
},
spellCheckConfiguration: const SpellCheckConfiguration( misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 20), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5), borderRadius: const BorderRadius.only(
topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
),
child: TextFormField( obscureText: true,
decoration: const InputDecoration(
	hintText: "Password",	
 
),
validator: (value) {
if (value == null || value.isEmpty) { return 'Please enter your Password';
}
return null;
},
),
),
const SizedBox(height: 30), Container(
height: 50,
width: 350,
child: OutlinedButton( onPressed: () {
if (_formKey.currentState?.validate() ?? false) { Navigator.push(
context, MaterialPageRoute(
builder: (context) => OnTapExample(),
));
}
},
style: ButtonStyle(
foregroundColor: MaterialStateProperty.all(Colors.white), backgroundColor:
MaterialStateProperty.all(Colors.deepPurpleAccent),
),
child: const Text( "Login",
style: TextStyle( fontSize: 20,
),
),
),
),
],
),
),
),
),
);
}
}

