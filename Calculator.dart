import 'package:flutter/cupertino.dart';
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var no1Contrroller = TextEditingController();
  var no2Contrroller = TextEditingController();
  var result = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(' Calculator'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Contrroller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Contrroller,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Contrroller.text.toString());
                         var no2 = int.parse(no2Contrroller.text.toString());
                         var sum = no1+no2;

                         result = "The Addition Of $no1 and $no2 is $sum" ;

                         setState(() {});


                       }, child: Text('Add')),
                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Contrroller.text.toString());
                         var no2 = int.parse(no2Contrroller.text.toString());
                         var sum = no1/no2;

                         result = "The division Of $no1 and $no2 is $sum" ;

                         setState(() {});

                       }, child: Text('Division')),
                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Contrroller.text.toString());
                         var no2 = int.parse(no2Contrroller.text.toString());
                         var sum = no1*no2;

                         result = "The Of $no1 and $no2 is $sum" ;

                         setState(() {});
                       }, child: Text('Multiplication')),
                       ElevatedButton(onPressed: (){
                         var no1 = int.parse(no1Contrroller.text.toString());
                         var no2 = int.parse(no2Contrroller.text.toString());
                         var sum = no1-no2;

                         result = "The Substraction Of $no1 and $no2 is $sum" ;

                         setState(() {});
                       }, child: Text('substraction')),

                    ],
                  ),
                ),
                
                Padding(padding: EdgeInsetsGeometry.all(21),
                  child: Text(result, style: TextStyle(fontSize: 25,color: Colors.lightBlue),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
