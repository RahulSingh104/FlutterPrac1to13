import 'package:flutter/material.dart'; void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget { const MyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
appBar: AppBar(
title: const Text('Practical-4'),
),
body: Center( child: Padding(
padding: const EdgeInsets.all(16), child: Column(
mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
FloatingActionButton( onPressed: () {
print('Floating Button Pressed');
},
child: const Icon(Icons.account_circle), backgroundColor: Colors.green,
),
const SizedBox(height: 20), Text.rich(
TextSpan( text: 'Hi ',
style: DefaultTextStyle.of(context).style, children: const <TextSpan>[
TextSpan(
text: 'Android',
style: TextStyle(fontWeight: FontWeight.bold),
),
TextSpan(text: ' Developers!'),
],
),
style: const TextStyle(fontSize: 18),
),
const SizedBox(height: 20),
	Container(	
 padding: const EdgeInsets.all(16), decoration: BoxDecoration( color: Colors.yellow[200],
borderRadius: BorderRadius.circular(8),
),
child: const Text(
'This is a new Container', style: TextStyle(fontSize: 16),
),
),
const SizedBox(height: 20), ElevatedButton( onPressed: () {
print('Elevated Button Pressed');
},
style: ElevatedButton.styleFrom(), child: const Text(
'Click Me for a surprise',
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
