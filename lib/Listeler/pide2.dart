import 'package:flutter/material.dart';

class UrunList {
  List<Urun> urun;
  UrunList(this.urun);
}
class Urun {
  int _id;
  String _imgUrl;
  double _star;
  String _title;
  String _description;
  String _background;
  String _foreground;
  double _price;



  /// Kurucu metod içerisindeki köşeli parantez alanın opsiyonel olduğunu belirtir
  Urun(this._imgUrl,this._star,this._title,this._description, this._background, this._foreground,this._price, );

  Urun.withId(this._id,this._imgUrl,this._star,this._title,this._description, this._background, this._foreground,this._price,);

  int get id => _id;
  String get imgUrl => _imgUrl;
  double get star => _star;
  String get title => _title;
  double get price => _price;
  String get description => _description;
  String get background => _background;
  String get foreground => _foreground;

  set imgUrl(String value) {
    if (value.length <= 255) {
      _imgUrl = value;
    }
  }
  set star(double value) {
    if (value >= 0) {
      _star = value;
    }
  }
  set title(String value) {
    if (value.length <= 20) {
      _title = value;
    }
  }

  set description(String value) {
    if (value.length <= 255) {
      _description = value;
    }
  }

    set background(String value) {
    _background = value;
  }
  set foreground(String value) {
    _foreground = value;
  }
  set price(double value) {
    if (value > 0) {
      _price = value;
    }
  }
  /// SQLite'a uyumlu hale getirmek için kullanılır
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["imgUrl"] = _imgUrl;
    map["star"] = _star;
    map["title"] = _title;
    map["description"] = _description;
    map["background"] = _background;
    map["foreground"] = _foreground;
    map["price"] = _price;

    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  /// SQLite'dan alınan nesneyi sınıfa çevirmek için kullanılır
  Urun.fromObject(dynamic o) {
    this._id = o["id"];
    this._imgUrl = o["imgUrl"];
    this._star = double.tryParse(o["star"].toString());
    this._title = o["title"];
    this._description = o["description"];
    this._background = o["background"];
    this._foreground = o["foreground"];
    this._price =double.tryParse(o["price"].toString()) ;
  }
}
