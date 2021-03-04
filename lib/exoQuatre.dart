import 'package:flutter/material.dart';


class ExoQuatre extends StatefulWidget {
  @override
  _ExoQuatreState createState() => _ExoQuatreState();
}

class _ExoQuatreState extends State<ExoQuatre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor : Colors.deepPurpleAccent,
        body : SafeArea(
          child: Column(
            children: <Widget> [
              Text('Exercice 4',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white)),
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: ClipRect(
                  child: Align(
                    heightFactor: 0.5,
                    widthFactor: 0.5,
                    child : Image.asset('assets/image/IMG_5131.JPG'),
                  ),
                ),
              ),
              Container(
                child : Image.asset('assets/image/IMG_5131.JPG'),
                alignment: Alignment.center,
              ),
            ],
          ),
        )
    );
  }
}
