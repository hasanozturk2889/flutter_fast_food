import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/burgerMain.dart';
import 'package:flutter_fast_food/Menu/pideMain.dart';
import 'package:flutter_fast_food/Menu/pizzaMain.dart';
import 'package:flutter_fast_food/Menu/sandvicMain.dart';
import 'package:flutter_fast_food/Menu/yanUrunMain.dart';

Widget Menu() {
  return Container(
    height: 580,
    width: double.infinity,
    child: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(top: 15),
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          fontFamily: "fonts/slabo"),
                      unselectedLabelColor: Colors.black26,
                      unselectedLabelStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          fontFamily: "slabo"),
                      tabs: <Widget>[
                        Container(
                          child: Text("Pide"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("Pizza"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("Burger"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("Sandviç"),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("Yan Ürünler"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[

            pideMain(),
            pizzaMain(),
            burgerMain(),
            sandvicMain(),
            yanUrunMain(),
          ],
        ),
      ),
    ),
  );
}