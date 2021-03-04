import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'exoUn.dart';
import 'exoCinq.dart';
import 'exoQuatre.dart';
import 'exoDeux.dart';

class menu_TP2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor : Colors.deepPurpleAccent,
      body : Container(
        padding: EdgeInsets.only(bottom: 130),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'TP2', style: TextStyle(
                fontFamily: 'Sinatra',
                fontSize : 100
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 40 , right:40),
              child: RaisedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ExoUn()),
                 );
                },
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text('Exercice 1', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 40 , right:40),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExoDeux()),
                  );
                },
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text('Exercice 2', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.only(left: 40 , right:40),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExoQuatre()),
                  );
                },                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text('Exercice 4', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 40 , right:40),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExoCinq()),
                  );
                },                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text('Exercice 5', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 40 , right:40),
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text('Exercice 6', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 40 , right:40),
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Text('Exercice 7', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )),
              ),
            )

          ],)
      )
    );
  }
}
