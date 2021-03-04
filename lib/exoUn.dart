import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
double Value1 = 50;

class ExoUn extends StatefulWidget {
  @override
  _ExoUnState createState() => _ExoUnState();
}

class _ExoUnState extends State<ExoUn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.deepPurpleAccent,
      body : SafeArea(
        child: Column(
          children: <Widget> [
            Text('Exercice 1',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white)),
            Image.asset('assets/image/IMG_5131.JPG'),
          ],
        ),
      )
    );
  }
}
