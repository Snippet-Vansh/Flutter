import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon Widget'),
        ),
        body: Container(
          width: 300,
          height: 200,
          color: Colors.blueGrey,
          child: Stack(
            children: [
              Positioned(
                bottom: 41,
                left: 41,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              )

            ],
          ),
        )
    );
  }
}
