import 'package:flutter/material.dart';

class NavigationExample extends StatefulWidget { const NavigationExample({super.key});

@override
State<NavigationExample> createState() => _NavigationExampleState();
}
class _NavigationExampleState extends State<NavigationExample> { int _currentIndex = 0;

final List<Widget> _pages = [ FirstPage(),
SecondPage(), ThirdPage(),
];
@override
Widget build(BuildContext context) { return Scaffold(
appBar: AppBar(
title: const Text("Practical-4"),
),
body: _pages[_currentIndex], bottomNavigationBar: BottomNavigationBar( currentIndex: _currentIndex,
onTap: (index) { setState(() {
_currentIndex = index;
});
},
items: const [
BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), BottomNavigationBarItem(icon: Icon(Icons.work), label: 'work'), BottomNavigationBarItem(
icon: Icon(Icons.account_circle_rounded), label: 'Account'),
],
),
);
}
}

class FirstPage extends StatelessWidget { @override
Widget build(BuildContext context) { return const Center(
	child: Text(	
 
"Home Page", style: TextStyle(
fontWeight: FontWeight.bold,
),
));
}
}

class SecondPage extends StatelessWidget { @override
Widget build(BuildContext context) { return const Center(
child: Text( "Work Page", style: TextStyle(
fontWeight: FontWeight.bold,
),
));
}
}
class ThirdPage extends StatelessWidget { @override
Widget build(BuildContext context) { return const Center(
child: Text( "Account Page", style: TextStyle(
fontWeight: FontWeight.bold,
),
),
);
}
}
