import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/altBar.dart';
import 'package:flutter_fast_food/Menu/menu.dart';
import 'package:flutter_fast_food/Menu/titleBar.dart';


class PideHome extends StatefulWidget {
  PideHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PideHomeState createState() => _PideHomeState();
}

class _PideHomeState extends State<PideHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.grey[800],
          iconSize: 30.0,
          onPressed: () {},
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_outlined),
            color: Colors.grey[800],
            iconSize: 30.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_basket),
            color: Colors.grey[800],
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,

              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Column(
                      children: <Widget>[
                        titleBar(),
                        Menu(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            butonNavigation(),
          ],
        ),
      ),
    );
  }
}



