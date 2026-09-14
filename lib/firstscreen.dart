import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              icon: Icon(Icons.arrow_forward),
            )
        ],
        title: Text("MODEL"),
         backgroundColor: Colors.purpleAccent),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(child: Text("v",style: TextStyle(color:Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold),),
            radius: 50,
            backgroundColor: Colors.purple,),
            Text(
              "Welcome to your model",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            Text('i am developer'),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100,height: 100, 
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                 child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total project'),
                    Text('20',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                      ),
                  ],
                ),
                ),
                Container(width: 100,height: 100, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white
                ),
                child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total project'),
                    Text('10',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                      ),
                  ],
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
