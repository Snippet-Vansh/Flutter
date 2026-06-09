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
  RangeValues values =RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RangeSlider(
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade700,
            values: values,
            labels: RangeLabels(
              values.start.toStringAsFixed(1),
              values.end.toStringAsFixed(1),
            ),
            onChanged: (newValue) {
              print('${newValue.start},${newValue.end}');
              setState(() {
                values = newValue;
              });
            },
          ),
          Text("Selected range: ${values.start} - ${values.end}"),
        ],
      ),
    );
  }
}
