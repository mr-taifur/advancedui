import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // The index of the currently selected navigation bar item
  int _selectedIndex = 0;

  // Method to handle navigation when a bottom navigation item is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Display different content based on selected index
              if (_selectedIndex == 0) ...[
                // Home Page Content
                Image.network(
                  "https://cdn.pixabay.com/photo/2024/01/15/11/36/batman-8510024_960_720.png",
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2024/01/15/11/36/batman-8510022_1280.png",
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2024/03/26/14/51/ai-generated-8657041_1280.jpg",
                ),
              ] else if (_selectedIndex == 1) ...[
                // Settings Page Content
                Center(
                  child: Text('Settings Page'),
                ),
              ] else if (_selectedIndex == 2) ...[
                // About Page Content
                Center(
                  child: Text('About Page'),
                ),
              ],
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
