import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var arrIndex = [1,2,3,4,5,6,7,8,9,10,11]; // your list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List wheel")),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 100, // match child height
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text('$value',style: TextStyle(fontSize: 21,color: Colors.white),)),
              decoration: BoxDecoration(
                
              borderRadius: BorderRadius.circular(21),
              color: Colors.orange,
              ),
              width: double.infinity,
              height: 100,
            ),
          )).toList(),
        ),
      ),
    );
  }
}
