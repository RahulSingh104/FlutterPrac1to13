import 'package:flutter/material.dart'; void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
final List<String> items = List.generate(8, (index) => 'Grid ${index + 1}');

// Define a list of colors final List<Color> colors = [ Colors.red,
Colors.blue, Colors.green, Colors.orange, Colors.purple, Colors.teal, Colors.amber, Colors.indigo,
];

@override
Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
appBar: AppBar(
title: const Text('GridView', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), backgroundColor:Colors.black,
),
body: GridView.builder(
gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,
crossAxisSpacing: 15.0,
mainAxisSpacing: 15.0,
),
padding: const EdgeInsets.all(10), itemCount: items.length,
itemBuilder: (BuildContext context, int index) { return Card(
elevation: 6,
color: colors[index % colors.length], child: Center(
child: Text( items[index],
style: const TextStyle(fontSize: 20.0, color: Colors.white), // Text color
),
 
),
);
},
),
),
);
}
}
