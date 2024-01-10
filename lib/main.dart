import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the HomeScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book App',
      theme: ThemeData(
        primaryColor: Colors.black87,
      ),
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}