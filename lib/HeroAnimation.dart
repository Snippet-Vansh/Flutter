import 'package:flutter/material.dart';
import 'package:flutterprojectsfirstapp/detail_page.dart';

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
      home:DashBoardScreen(),
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

    return Scaffold(
        appBar: AppBar(
          title: Text("Hero"),
        ),

        body: Container(
          child: Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailPage(),));
              },
              child: Hero(
              
                  tag: 'Background',
                  child: Container(
                    color: Colors.blue,
                        height: 100,
                    width: 200,
                  ),
                  ),
            )
          ),

        )

    );
  }
}