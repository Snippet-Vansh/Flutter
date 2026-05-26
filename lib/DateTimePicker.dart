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

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("TIME AND DATE"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('select Date',
              style: TextStyle(fontSize: 22),
              ),
              ElevatedButton(onPressed: () async {
                DateTime? datepicked = await showDatePicker(
                    context: context,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                    initialDate: DateTime.now());
                if(datepicked != null){
                  print('Date selected: ${datepicked.year}');
                }
              }, child: Text('show')),
              ElevatedButton(onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial
                );
                if(pickedTime!=null){
                  print('Time selected:${pickedTime.hour}:${pickedTime.minute}');
                }
              }, child: Text('Select time'))
            ],
          ),
        )

    );
  }
}