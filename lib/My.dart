import 'package:flutter/material.dart';
import 'firstscreen.dart'; // make sure the filename matches exactly

void main() {
  runApp(const MyApp()); // ✅ Entry point added
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // optional
      home: HomePage(), // ✅ loads your first screen
    );
  }
}
