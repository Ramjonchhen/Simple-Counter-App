import 'package:flutter/material.dart';
import 'number.dart';

void main() {
  runApp(MyApp());
}

Number num = Number();

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          title: Text(
            'Counter App',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildIcon(icon: Icon(Icons.control_point, color: Colors.blue)),
              NumDisplay(),
              buildIcon(
                  icon: Icon(Icons.remove_circle_outline, color: Colors.blue))
            ],
          ),
        ),
      ),
    );
  }
}

class NumDisplay extends StatefulWidget {
  NumDisplay({Key key}) : super(key: key);

  @override
  _NumDisplayState createState() => _NumDisplayState();
}

class _NumDisplayState extends State<NumDisplay> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '0',
      style: TextStyle(
        fontSize: 40.0,
        color: Colors.white,
      ),
    );
  }
}

Container buildIcon({Icon icon}) {
  return Container(
    width: 90.0,
    height: 90.0,
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueAccent[100],
      ),
      child: icon,
    ),
  );
}
