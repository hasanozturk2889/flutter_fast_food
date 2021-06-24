import 'package:flutter/material.dart';
import 'package:flutter_fast_food/screens/createGrid.dart';

class iletisim extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "İletişim", style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            fontFamily: "slabo",
            color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: CustomPaint(
              painter: ShapesPainter(),
              child: Container(
                height: size.height / 2,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height:size.height / 1.2 ,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.count(
                crossAxisCount: 1,
                children: <Widget>[
                  createGridItem(0),
                  createGridItem(1),
                  //createGridItem(2),
                  //createGridItem(3),
                 // createGridItem(4),
                  //createGridItem(5),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
