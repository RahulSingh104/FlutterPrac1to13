import 'package:flutter/material.dart'; void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget { const MyApp({super.key});

@override
Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
appBar: AppBar( title: const Text( 'ListView Example',
style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
),
foregroundColor: Colors.black, backgroundColor: Colors.lightBlueAccent,
),
body: ListView(
children: const <Widget>[ Card(
child: ListTile(
title: Text("Moon", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),), subtitle: Text("Revolves around Earth.", style: TextStyle(fontWeight: FontWeight.bold),), leading: CircleAvatar(
backgroundImage: AssetImage('images/moon.jpg')), trailing: Icon(Icons.star))),
Card(
child: ListTile(
title: Text("Sun", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),), subtitle: Text(" Its a Star ", style: TextStyle(fontWeight: FontWeight.bold),), leading: CircleAvatar(
backgroundImage: AssetImage('images/sun.jpg')), trailing: Icon(Icons.sunny))),
Card(
child: ListTile(
title: Text("Earth", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),), subtitle: Text("We Live Here", style: TextStyle(fontWeight: FontWeight.bold),), leading: CircleAvatar(
backgroundImage: AssetImage('images/earth.jpg')), trailing: Icon(Icons.water))),
Card(
child: ListTile(
 
title: Text("Mars", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),), subtitle: Text("Finding life Here", style: TextStyle(fontWeight: FontWeight.bold),), leading: CircleAvatar(
backgroundImage: AssetImage('images/mars.jpg')), trailing: Icon(Icons.rocket))),
// Add more ListTiles as needed
],
),
),
);
}
}
