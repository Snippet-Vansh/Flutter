import 'package:flutter/material.dart';
import 'package:flutterprojectsfirstapp/widgets/RoundedButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Play',
              icon: Icon(Icons.play_arrow),
              callBack: (){
                print('playing');
              },
              textStyle: mTextStyle16(),
              ),
            ),
            Container(height: 11,),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Play',
              callBack: (){
                print('playing');
              },
                bgColor: Colors.green,
              textStyle: mTextStyle21(),
              ),
            ),
          ],
        ),
      )
    );
  }

  TextStyle? mTextStyle16() {}

  TextStyle? mTextStyle21() {}
}