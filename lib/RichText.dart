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
          title: const Text('Boilerplate'),
        ),
        body: RichText(text: TextSpan(
          style: TextStyle(
            color: Colors.green,
            fontSize: 16
          ),
          children: <TextSpan>[
            TextSpan(text: 'hello',),
            TextSpan(text: 'world',style: TextStyle(
              fontSize: 36,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold
            )),
            TextSpan(
              text: 'Welcome to',
              // style: TextStyle(
              //   color: Colors.brown,
              //   fontSize: 30,
              //   fontWeight: FontWeight.
              ),
             TextSpan(
               text: 'flutter',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 43,
                 color: Colors.amber,
                 fontFamily: 'FontMain'
               )
             )
          ]
        ))

    );
  }
}
