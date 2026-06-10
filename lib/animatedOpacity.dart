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
  var myOpacity = 1.0;

  var isVisible = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Animation"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AnimatedOpacity(
              curve: Curves.fastEaseInToSlowEaseOut,
              opacity: myOpacity,
              duration: Duration(seconds: 1),
              child:
              Container(
              width: 200,
              height: 100,
              color: Colors.green,
            ),),
            SizedBox(height: 20),

            ElevatedButton(onPressed: (){
               setState(() {
               myOpacity = 0.0;

              if(isVisible)
                {
                  myOpacity = 0.0;  // invisible
                  isVisible = false;
                }else{
                myOpacity = 1;   //invisible
                isVisible = true;
              }
               });
            }, child: Text('Animated'))
          ],
        ),

      )
    );
  }
}