import 'package:flutter/material.dart';

Widget titleBar() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image(
                  width: 150.0,
                  height:100.0,
                  image: AssetImage('assets/images/logo.PNG'),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: Column(
            children: [
              Text(
                "Efsane 28",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40,fontFamily: "slabo",color: Colors.black),
              ),
              Text("Fast-Food", style: TextStyle(fontWeight:FontWeight.w500,fontSize: 40,fontFamily: "slabo",color: Colors.orangeAccent,)),
            ],
          ),
        ),
      ],
    ),
  );
}
