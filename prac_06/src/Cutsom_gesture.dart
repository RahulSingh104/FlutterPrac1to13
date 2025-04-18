import 'package:flutter/material.dart';

class OnTapExample extends StatefulWidget { const OnTapExample({super.key}); @override
	State<OnTapExample> createState() => _OnTapExampleState();	
 
}
class _OnTapExampleState extends State<OnTapExample> { Color color1 = Colors.cyan;
String text1 = "cyan"; @override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
backgroundColor: Colors.purpleAccent, foregroundColor: Colors.white,
title: const Text("Tap Me Example"),
),
body: GestureDetector( onTap: () {
setState( () {
if (color1 == Colors.cyan) { color1 = Colors.red; text1 = "red";
} else {
color1 = Colors.cyan; text1 = "cyan";
}
},
);
},
child: Container( height: 100,
width: 100, color: color1, child: Center( child: Text(
text1,
style: const TextStyle( color: Colors.white,
),
),
),
),
),
);
}
}
