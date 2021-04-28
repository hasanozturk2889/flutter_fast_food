import 'package:flutter/material.dart';

BurgerList burgerList = BurgerList(burger: [
  Burger(
    resim: "assets/images/burger1.png",
    starRating: 4.5,
    isim: "Efsane Klasik",
    detay:
    "Büyük boy susamlı sandviç ekmeği, salatalık turşusu, ketçap, mayonez, doğranmış marul, domates ve soğandan oluşan bir Efsane 28 klasiği.",
    background: Color(0xfff2ca80),
    foreground: Colors.black,
    fiyat: 13.00,
  ),
  Burger(
    resim: "assets/images/burger2.png",
    starRating: 4.5,
    isim: "Efsane Cheese",
    detay:
    "Büyük boy susamlı sandviç ekmeği, salatalık turşusu, ketçap, mayonez, doğranmış marul, domates ve soğandan oluşan bir Efsane 28 klasiği.",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Burger(
    resim: "assets/images/burger3.png",
    starRating: 4.5,
    isim: "Efsane Double",
    detay:
    "Büyük boy susamlı sandviç ekmeği, salatalık turşusu, ketçap, mayonez, doğranmış marul, domates ve soğandan oluşan bir Efsane 28 klasiği.",
    background: Color(0xff4fc420),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Burger(
    resim: "assets/images/burger4.png",
    starRating: 4.5,
    isim: "Efsane Tavuk",
    detay:
    "Büyük boy susamlı sandviç ekmeği, salatalık turşusu, ketçap, mayonez, doğranmış marul, domates ve soğandan oluşan bir Efsane 28 klasiği.",
    background: Color(0xff5d2512),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Burger(
    resim: "assets/images/burger5.png",
    starRating: 4.5,
    isim: "Efsane Klasik 2",
    detay:
    "Büyük boy susamlı sandviç ekmeği, salatalık turşusu, ketçap, mayonez, doğranmış marul, domates ve soğandan oluşan bir Efsane 28 klasiği.",
    background: Color(0xffdddbd8),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Burger(
    resim: "assets/images/burger3.png",
    starRating: 4.5,
    isim: "Efsane \n Double Cheese",
    detay:
    "Büyük boy susamlı sandviç ekmeği, salatalık turşusu, ketçap, mayonez, doğranmış marul, domates ve soğandan oluşan bir Efsane 28 klasiği.",
    background: Color(0xffd54b1c),
    foreground: Colors.white,
    fiyat: 27.99,
  ),
]);

class BurgerList {
  List<Burger> burger;
  BurgerList({@required this.burger});
}

class Burger {
  String resim;
  Color background;
  Color foreground;
  String isim;
  double starRating;
  String detay;
  double fiyat;

  Burger(
      {@required this.resim,
        @required this.background,
        @required this.foreground,
        @required this.isim,
        @required this.starRating,
        @required this.detay,
        @required this.fiyat});
}
