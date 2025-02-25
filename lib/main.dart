import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Drawer Example"), backgroundColor: Colors.orangeAccent),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.orangeAccent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person,
                      size: 80, color: Colors.white), // User icon image
                  SizedBox(height: 10),
                  Text("User Name",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Images"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Text("Swipe from left to open Drawer",
              style: TextStyle(fontSize: 18))),
    );
  }
}
