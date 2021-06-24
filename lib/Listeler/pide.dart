import 'package:flutter/material.dart';

PideList pideList = PideList(pide:[
  Pide(
    resim: "assets/images/pide1.PNG",
    starRating: 4.5,
    isim: "Lahmacun",
    detay:
    "Lahmacun, açılmış hamurun üzerine kıyma, maydanoz, soğan, sarımsak ve karabiber, isot gibi baharatlarla hazırlanan malzeme sürüldükten sonra taş fırında pişirilmesiyle yapılan Orta Doğu mutfağında bir çeşit içli pidedir.",
    background: Color(0xfff2ca80),
    foreground: Colors.black,
    fiyat: 13.00,
  ),
  Pide(
    resim: "assets/images/pide7.png",
    starRating: 4.5,
    isim: "Kuşbaşılı",
    detay:
    "Efsane Kuşbaşılı Pide",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Pide(
    resim: "assets/images/pide3.png",
    starRating: 4.5,
    isim: "Kıymalı Kaşarlı",
    detay:
    "Efsane Kıymalı Kaşarlı Pide",
    background: Color(0xff4fc420),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Pide(
    resim: "assets/images/pide8.png",
    starRating: 4.5,
    isim: "Kaşarlı",
    detay:
    "Efsane Kaşarlı Pide",
    background: Color(0xff5d2512),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Pide(
    resim: "assets/images/pide5.png",
    starRating: 4.5,
    isim: "Görele",
    detay:
    "Efsane Görele Pidesi",
    background: Color(0xffdddbd8),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Pide(
    resim: "assets/images/pide6.png",
    starRating: 4.5,
    isim: "Sucuklu",
    detay:
    "Efsane Sucuklu Pide",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    fiyat: 12.99,
  ),

]);

class PideList {
  List<Pide> pide;
  PideList({@required this.pide});
}

class Pide {
  String resim;
  Color background;
  Color foreground;
  String isim;
  double starRating;
  String detay;
  double fiyat;

  Pide(
      {@required this.resim,
        @required this.background,
        @required this.foreground,
        @required this.isim,
        @required this.starRating,
        @required this.detay,
        @required this.fiyat});


}
