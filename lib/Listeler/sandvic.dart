import 'package:flutter/material.dart';

SandvicList sandvicList = SandvicList(sandvic: [
  Sandvic(
    resim: "assets/images/sandvic1.png",
    starRating: 4.5,
    isim: "Sucuklu Kaşarlı",
    detay:
    "Efsane Sucuklu Kaşarlı Sandviç",
    background: Color(0xfff2ca80),
    foreground: Colors.black,
    fiyat: 13.00,
  ),
  Sandvic(
    resim: "assets/images/sandvic2.png",
    starRating: 4.5,
    isim: "Tavuklu",
    detay:
    "Efsane Tavuklu Soğuk Sandviç",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Sandvic(
    resim: "assets/images/sandvic3.png",
    starRating: 4.5,
    isim: "Salamlı",
    detay:
    "Efsane Salamlı Soğuk Sandviç",
    background: Color(0xff4fc420),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Sandvic(
    resim: "assets/images/sandvic4.png",
    starRating: 4.5,
    isim: "Peynirli",
    detay:
    "Efsane Peynirli Soğuk Sandviç",
    background: Color(0xff5d2512),
    foreground: Colors.white,
    fiyat: 12.99,
  ),

]);

class SandvicList {
  List<Sandvic> sandvic;
  SandvicList({@required this.sandvic});
}

class Sandvic {
  String resim;
  Color background;
  Color foreground;
  String isim;
  double starRating;
  String detay;
  double fiyat;

  Sandvic(
      {@required this.resim,
        @required this.background,
        @required this.foreground,
        @required this.isim,
        @required this.starRating,
        @required this.detay,
        @required this.fiyat});
}
