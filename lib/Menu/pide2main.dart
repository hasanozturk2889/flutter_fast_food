import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Listeler/pide2.dart';
import 'package:flutter_fast_food/database/dbHelper.dart';
import 'package:flutter_fast_food/screens/pidelistesi.dart';

class Eticaret extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return EticaretState();
  }
  
}
class EticaretState extends State<Eticaret>{
  @override
  Widget build(BuildContext context) {
    DbHelper helper=new DbHelper();
    helper.dbOlustur().then((database) => {});
    //Urun  urun1= new Urun("pide7.png", 4.0, "K", "E", "black", "white", 15.99);
   /* Urun  urun2= new Urun("assets/images/pide7.png", 4.0, "Kuşbaşılı", "Efsane Kuşbaşılı Pide", "Color(0xffd82a12)", "Colors.white", 15.99);
    Urun  urun3= new Urun("assets/images/pide7.png", 4.0, "Kuşbaşılı", "Efsane Kuşbaşılı Pide", "Color(0xffd82a12)", "Colors.white", 15.99);helper.ekle(urun2);
    helper.ekle(urun3);*/
   // helper.ekle(urun1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Ürün Listesi", style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,fontFamily: "slabo",color: Colors.white,),),
              ),
      body: UrunListesi(),
    );
  }
  
}
