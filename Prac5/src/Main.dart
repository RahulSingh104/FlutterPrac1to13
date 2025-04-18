import 'package:flutter/material.dart';
class LoginPageDesign extends StatelessWidget { const LoginPageDesign({super.key});
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: const Text("LAB 5"),
backgroundColor: const Color.fromARGB(239, 183, 154, 58), foregroundColor: Colors.white,
automaticallyImplyLeading: true,
),
body: Container(
child: SingleChildScrollView( child: Column(
children: [
const SizedBox(height: 100),
Image.asset('images/phoenix.png' , fit: BoxFit.contain, width: 200,height: 200,), const SizedBox(height: 15),
const Text("Login to your account"), const SizedBox(height: 20), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10),
	decoration: BoxDecoration(	
 
border: Border.all(color: Colors.black, width: 1.5), borderRadius: const BorderRadius.only(
topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
),
child: const TextField(
//keyboardType: TextInputType.number, decoration: InputDecoration(
hintText: "Username or email",
),
spellCheckConfiguration: SpellCheckConfiguration( misspelledSelectionColor: Colors.red),
),
),
const SizedBox(height: 20), Container(
margin: const EdgeInsets.symmetric(horizontal: 20), padding: const EdgeInsets.symmetric(horizontal: 10), decoration: BoxDecoration(
border: Border.all(color: Colors.black, width: 1.5), borderRadius: const BorderRadius.only(
topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
),
child: const TextField( obscureText: true, decoration: InputDecoration( hintText: "Password",
),
),
),
const SizedBox(height: 30), constContainer(
height: 50,
width: 350,
child: OutlinedButton( onPressed: () {}, style: ButtonStyle(
foregroundColor: MaterialStateProperty.all(Colors.white), backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
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
);
}
}
