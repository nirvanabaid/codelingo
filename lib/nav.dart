import 'package:codelingo/Learner/compiler_screen.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // The two widgets you want to display
  final List<Widget> _widgetOptions = <Widget>[
    LearnerHome(),
    CompilerScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Example'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'Compile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Ensure you have widgets named LearnerHome and Compiler defined in your project
class LearnerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Learner Home Content'));
  }
}

class Compiler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Compiler Content'));
  }
}
