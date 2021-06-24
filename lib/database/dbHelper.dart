import 'dart:ui';

import 'package:flutter_fast_food/Listeler/pide2.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class DbHelper {


  String tblUrun = "urunler";
  String colId = "id";
  String colImgUrl = "imgUrl";
  String colStar = "star";
  String colTitle = "title";
  String colDescription = "description";
  String colBackground = "background";
  String colForeground = "foreground";
  String colPrice = "price";

  DbHelper._internal();
  static final DbHelper _dbHelper = DbHelper._internal();
  // Dart dili factory kelimesi ile Singleton yapı kullanmamıza izin verir. Singleton bir sınıftan sadece bir nesnenin oluşmasını sağlayan bir yapıdır.
  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await dbOlustur();
    }
    return _db;
  }

  // Veritabanı işlemleri asenkron işlemler olduğundan async kelimesi ile ilgili fonksiyonları nitelememiz gerekir

  Future<Database> dbOlustur() async {
    Directory dosya = await getApplicationDocumentsDirectory();
    String yol = dosya.path + "eticaret.db";
    var eTicaretDb = await openDatabase(yol, version: 1, onCreate: olustur);
    return eTicaretDb;
  }

  void olustur(Database db, int versiyon) async {
    await db.execute("CREATE TABLE $tblUrun($colId INTEGER PRIMARY KEY, $colImgUrl TEXT,$colStar INTEGER, $colTitle TEXT,$colDescription TEXT,  $colBackground TEXT,  $colForeground TEXT,$colPrice INTEGER)");
  }

  Future<int> ekle(Urun urun) async {
    Database db = await this.db;
    var result = await db.insert(tblUrun, urun.toMap());
    return result;
  }
  Future<int> guncelle(Urun urun) async {
    Database db = await this.db;
    var result = await db.update(tblUrun, urun.toMap(),
        where: "$colId = ?", whereArgs: [urun.id]);
    return result;
  }
  Future<int> sil(int id) async {
    Database db = await this.db;
    var result = await db.rawDelete("Delete from $tblUrun, where $colId = $id");
    return result;
  }

  Future<List> getUrunler() async {
    //List<Urun> Pide2List = [];
    Database db = await this.db;
    var result =  await db.rawQuery("SELECT * FROM $tblUrun");
   // result.forEach((element) {
   //   Pide2List.add(Urun.fromObject(element));
   // });
   // return Pide2List;
    return  result;
  }

  Future<int> getCount() async {
    Database db = await this.db;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("SELECT COUNT(*) FROM $tblUrun"));

    return result;
  }

}



