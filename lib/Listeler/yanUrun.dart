import 'package:flutter/material.dart';

YanUrunList yanurunList = YanUrunList(yanurun: [
  YanUrun(
    resim: "assets/images/yanurun1.png",
    starRating: 4.5,
    isim: "Patates Kızartması",
    detay:
    " Efsane patates kızartması",
    background: Color(0xfff2ca80),
    foreground: Colors.black,
    fiyat: 10.00,
  ),
  YanUrun(
    resim: "assets/images/yanurun2.png",
    starRating: 4.5,
    isim: "Soğan Halkaları",
    detay:
    "Efsane soğan halkaları",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  YanUrun(
    resim: "assets/images/yanurun3.png",
    starRating: 4.5,
    isim: "Tavuk Parçaları",
    detay:
    "Efsane tavuk parçaları.",
    background: Color(0xff4fc420),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  YanUrun(
    resim: "assets/images/yanurun4.png",
    starRating: 4.5,
    isim: "Kola",
    detay:
    "Efsane 28 klasiği.",
    background: Color(0xff5d2512),
    foreground: Colors.white,
    fiyat: 2.99,
  ),
  YanUrun(
    resim: "assets/images/yanurun6.png",
    starRating: 4.5,
    isim: "Soda",
    detay:
    "Efsane 28 klasiği.",
    background: Color(0xffdddbd8),
    foreground: Colors.black,
    fiyat: 2.99,
  ),
  YanUrun(
    resim: "assets/images/yanurun5.png",
    starRating: 4.5,
    isim: "Efsane Ayran",
    detay:
    "Efsane 28 klasiği.",
    background: Color(0xffd54b1c),
    foreground: Colors.white,
    fiyat: 2.99,
  ),
]);

class YanUrunList {
  List<YanUrun> yanurun;
  YanUrunList({@required this.yanurun});
}

class YanUrun {
  String resim;
  Color background;
  Color foreground;
  String isim;
  double starRating;
  String detay;
  double fiyat;

  YanUrun(
      {@required this.resim,
        @required this.background,
        @required this.foreground,
        @required this.isim,
        @required this.starRating,
        @required this.detay,
        @required this.fiyat});
}
