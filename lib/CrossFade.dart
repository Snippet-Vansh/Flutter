import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cross Fade",
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
  bool isFirst = true;





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
              AnimatedCrossFade(
                duration: Duration(seconds: 2),
                firstChild: Container(
                  width: 200,
                  height: 100,
                  color: Colors.cyanAccent,
                ),
                secondChild: ElevatedButton(onPressed: (){}, child: Text('click')
               ),
                crossFadeState: isFirst ?  CrossFadeState.showFirst: CrossFadeState.showSecond,
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                isFirst =false;
                setState(() {

                });
              }, child: Text('Show'))
            ],
          ),
        ),
    );
  }
}