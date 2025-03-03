import 'package:flutter/material.dart';

void main() {
  runApp(const kimly());
}

class kimly extends StatelessWidget {
  const kimly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Corrected variable name

  final List<Widget> _widgetOptions = [ // Corrected variable name
    const Text('Home'),
    const Text('Current City'),
    const Text('School'),
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
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex], // Display the selected widget
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Handle item taps
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.location_city),label: 'Current City',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school),label: 'School',
          ),
        ],
      ),
    );
  }
}

