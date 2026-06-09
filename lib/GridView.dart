import 'package:flutter/material.dart';


void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.red,
      Colors.orange,
      Colors.pink,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.purple,
      Colors.redAccent,
      Colors.brown,
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Grid View"),
        ),
         body:GridView.builder(
           itemCount: arrColors.length,

           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 4,
             crossAxisSpacing: 10,
             mainAxisSpacing: 11,
           ),

           itemBuilder: (context, index) {
             return Container(
               color: arrColors[index],
             );
           },
         )
        //GridView.count(crossAxisCount: 4,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 11,
        // children: [
        //
        //   Container(color: arrColors[0],),
        //   Container(color: arrColors[1],),
        //   Container(color: arrColors[2],),
        //   Container(color: arrColors[3],),
        //   Container(color: arrColors[4],),
        //   Container(color: arrColors[5],),
        //   Container(color: arrColors[7],),
        //   Container(color: arrColors[8],),
        // ],)
    );
  }
}
