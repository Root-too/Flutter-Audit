import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchEx(),
    );
  }
}
  
class SwitchExState extends State {
  bool isSwitched = false;
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment One'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeTrackColor: Colors.lightGreenAccent, 
              activeColor: Colors.green,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.lightBlueAccent, 
            ),
            Slider(
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
              activeColor: Colors.red,
              inactiveColor: Colors.yellow,
              divisions: 4,
              max: 20,
              min:0,
              onChangeStart: (double value) {
                print('Start value is ' + value.toString());
              },
              onChangeEnd: (double value) {
                print('End value is ' + value.toString());
              },  
            ),
          ],  
        ),
      ),
    );
  }
}
  
class SwitchEx extends StatefulWidget {
  @override
  SwitchExState createState() => new SwitchExState();
}

