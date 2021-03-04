import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;


double scale = 50;
double rotX = 0;
double rotY = 0;
double _rotY = 0;
bool mirror = false;
double paddingLeft = 0;

class ExoDeux extends StatefulWidget {
  @override
  _ExoDeuxState createState() => _ExoDeuxState();
}

class _ExoDeuxState extends State<ExoDeux> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor : Colors.deepPurpleAccent,
        body : SafeArea(
          child: Column(
            children: <Widget> [
              Text('Exercice 2',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white)),
              Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(color: Colors.white),
                child : Image.asset('assets/image/IMG_5131.JPG'),
                width: scale*3,
                  transform: Matrix4.rotationX(rotX*Math.pi/200)..rotateY(_rotY*Math.pi/200),
                  alignment: Alignment.center,
              ),
              Text('Taille',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
              Slider(value: scale,
                  min : 0,
                  max : 100,
                  divisions : 100,
                  label : scale.round().toString(),
                  onChanged: (double value){
                    setState(() {
                      scale = value;
                    });
                  }),
              Text('Rotation X',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
              Slider(value: rotX,
                  min : 0,
                  max : 100,
                  divisions : 100,
                  label : rotX.round().toString(),
                  onChanged: (double value){
                    setState(() {
                      rotX = value;
                    });
                  }),
              Text('Rotation Y',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
              Slider(value: rotY,
                  min : 0,
                  max : 100,
                  divisions : 100,
                  label : rotY.round().toString(),
                  onChanged: (double value){
                    setState(() {
                      rotY = value;
                      _rotY = rotY;
                    });
                  }),
              Text('Miroir',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
              CheckboxListTile(
                value: mirror,
                onChanged: (newValue) {
                  setState(() {
                    mirror = newValue;
                    _rotY = 200;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
              )


            ],
          ),
        )
    );
  }
}
