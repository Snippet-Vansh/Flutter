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

        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 11),
                        height: 200,
                        width: 200,
                        color: Colors.amberAccent,
                      ),  Container(
                        margin: EdgeInsets.only(bottom: 11),
                        height: 200,
                        width: 200,
                        color: Colors.brown,
                      ),  Container(
                        margin: EdgeInsets.only(bottom: 11),
                        height: 200,
                        width: 200,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),  Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.orange,
                ),  Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.blue,
                ),  Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.red,
                ), Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,

                  color: Colors.pink,
                )

              ],
            ),
          ),
        )

    );
  }
}
