import 'package:flutter/material.dart';

PizzaList pizzaList = PizzaList(pizza: [
  Pizza(
    resim: "assets/images/pizza.png",
    starRating: 4.5,
    isim: "Peynirli Tavuklu",
    detay:
    "Mozzarella Peyniri ve seçtiğiniz ızgara tavuk veya çıtır tavuk parçaları",
    background: Color(0xfff2ca80),
    foreground: Colors.black,
    fiyat: 13.00,
  ),
  Pizza(
    resim: "assets/images/pizza2.png",
    starRating: 4.5,
    isim: "Sucuklu",
    detay:
    "Mozzarella Peyniri, Sucuklu ve seçtiğiniz ızgara tavuk veya çıtır tavuk parçaları",
    background: Color(0xffd82a12),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Pizza(
    resim: "assets/images/pizza3.png",
    starRating: 4.5,
    isim: "Sebzeli",
    detay:
    "Mozzarella Peyniri, Sebzeli ve seçtiğiniz yeşillikler ile",
    background: Color(0xff4fc420),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Pizza(
    resim: "assets/images/pizza4.png",
    starRating: 4.5,
    isim: "Barbekü",
    detay:
    "Mozzarella Peyniri, Barbekü sos ve seçtiğiniz ızgara tavuk veya çıtır tavuk parçaları",
    background: Color(0xff5d2512),
    foreground: Colors.white,
    fiyat: 12.99,
  ),
  Pizza(
    resim: "assets/images/pizza5.png",
    starRating: 4.5,
    isim: "Karışık",
    detay:
    "Mozzarella Peyniri, Barbekü sos ve seçtiğiniz ızgara tavuk veya çıtır tavuk parçaları",
    background: Color(0xffdddbd8),
    foreground: Colors.black,
    fiyat: 12.99,
  ),
  Pizza(
    resim: "assets/images/pizza6.png",
    starRating: 4.5,
    isim: "Mantarlı",
    detay:
    "Mozzarella Peyniri, Barbekü sos ve seçtiğiniz ızgara tavuk veya çıtır tavuk parçaları",
    background: Color(0xffd54b1c),
    foreground: Colors.white,
    fiyat: 27.99,
  ),
]);

class PizzaList {
  List<Pizza> pizza;
  PizzaList({@required this.pizza});
}

class Pizza {
  String resim;
  Color background;
  Color foreground;
  String isim;
  double starRating;
  String detay;
  double fiyat;

  Pizza(
      {@required this.resim,
        @required this.background,
        @required this.foreground,
        @required this.isim,
        @required this.starRating,
        @required this.detay,
        @required this.fiyat});
}
