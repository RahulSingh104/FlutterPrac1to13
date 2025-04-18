import 'package:flutter/material.dart'; import 'login_page.dart';

void main() { runApp(MyApp());
}

class MyApp extends StatelessWidget { @override
Widget build(BuildContext context) { return MaterialApp(
title: 'Flutter UI Components', theme: ThemeData( primarySwatch: Colors.blue,
),
home: LoginPageDesign(),
);
}
}

class MyHomePage extends StatefulWidget { @override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { TextEditingController _textEditingController = TextEditingController(); String _displayText = '';
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: Text('Flutter UI Components'),
),
body: Padding(
padding: const EdgeInsets.all(16.0), child: Column(
mainAxisAlignment: MainAxisAlignment.center, children: [
TextField(
controller: _textEditingController, decoration: InputDecoration( hintText: 'Enter text...',
),
),
SizedBox(height: 16),
	ElevatedButton(	
 
onPressed: () {
setState(() {
_displayText = _textEditingController.text;
});
},
child: Text('Submit'),
),
SizedBox(height: 16), Text(
'Display Area:',
style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
),
SizedBox(height: 8), Text(
_displayText,
style: TextStyle(fontSize: 16),
),
],
),
),
);
}
}
