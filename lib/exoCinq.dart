import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double n = 3 ;

class ExoCinq extends StatefulWidget {
  @override
  _ExoCinqState createState() => _ExoCinqState();
}

class _ExoCinqState extends State<ExoCinq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor : Colors.deepPurpleAccent,
        body: GridView.count(
          primary: false,
            shrinkWrap: true, // new line
            padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: n.toInt(),
          children: <Widget>[
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 0)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(1/2, 0)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(1, 0)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 1/2)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(1/2, 1/2)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(1, 1/2)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 1)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(1/2, 1)).croppedImageTile()
            ),
            Container(
                child:new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(1, 1)).croppedImageTile()
            ),

          ]
        ));
  }
}

class Tile {
  String imageURL;
  Alignment alignment;

  Tile({this.imageURL, this.alignment});

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 1/n,
            heightFactor: 1/n,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

Tile tile = new Tile(
    imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 0));

class DisplayTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display a Tile as a Cropped Image'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: [
            SizedBox(
                width: 150.0,
                height: 150.0,
                child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: this.createTileWidgetFrom(tile))),
            Container(
                height: 200,
                child: Image.network('https://picsum.photos/512',
                    fit: BoxFit.cover))
          ])),
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("tapped on tile");
      },
    );
  }
}