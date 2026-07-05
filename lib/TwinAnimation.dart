
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin{
    late Animation animation;
    late AnimationController animationController;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    animationController.addListener((){});
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0,end: 200).animate(animationController);
    animationController.addListener((){
      
      print(animation.value);
    
         });
         
  animationController.forward();
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('Learning Phase'),

        ),

        body: Container()

    );
  }
}
