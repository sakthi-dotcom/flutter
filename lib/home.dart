import 'package:flutter/material.dart';
import 'constant.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs = [
    Center(child: Text("Welcome"),),
    Center(child: Text("Search"),),
    Center(child: Text("Notification"),),
    Center(child: Text("Settings"),),
    Center(child: Text("Profile"),),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          title,
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.red,
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.red,
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              backgroundColor: Colors.red,
              label: "NOtification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.red,
              label: "Profile"),
        ],
        onTap: (current_index) {
          setState(() {
            index = current_index;
          });
        },
      ),
    );
  }
}
