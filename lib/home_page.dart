import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrnames = [
      'vansh',
      'vansh1',
      'vansh2',
      'vansh3',
      'vansh6',
      'vansh7',
      'vansh8',
      'vansh9',
    ];
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Home Screen'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text('arrnames[]',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100));
        },
        itemCount: arrnames.length,
        // itemExtent: 100,
        // scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
            thickness: 2,
            height: 100,
          );
        },
      ),

      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: name.map((name)=> Container(
      //     margin: EdgeInsets.all(10),
      //     padding: EdgeInsets.all(10),
      //     color: Colors.white,
      //     child: Text(name,style: TextStyle(fontSize: 20)))).toList()
      // ),
    );
  }
}
