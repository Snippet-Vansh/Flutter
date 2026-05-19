import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('Learning Phase'),

        ),

        body: Center(
          child: InkWell(
            onTap: (){
              print('Tapped on Container');
            },
            onLongPress: (){
              print('Long pressed on container');
            },
            onDoubleTap: (){
              print('Double Tap on container');
            },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,

            child: Center(
          child: InkWell(
            onTap: (){
              print('Text Widget Tapped');
            },
          child: Text(
            'click here',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),))),
          ),
          ),

        )

    );
  }
}
