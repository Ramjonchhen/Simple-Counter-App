import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int number = 0;

  void inc() {
    setState(() {
      number++;
    });
  }

  void dec() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      appBar: AppBar(
        title: Text(
          'Counter App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[200],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                inc();
              },
              child: buildIcon(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.blue[900],
                  size: 25.0,
                ),
              ),
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            FlatButton(
              onPressed: () {
                dec();
              },
              child: buildIcon(
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: Colors.blue[900],
                  size: 25.0,
                ),
              ),
            )
          ],
        ),
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
      child: Center(child: icon),
    ),
  );
}
