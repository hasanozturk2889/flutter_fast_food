import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Listeler/pide2.dart';
import 'package:flutter_fast_food/database/dbHelper.dart';

DbHelper helper = new DbHelper();

class UrunListesi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UrunListesiState();
  }
}

class _UrunListesiState extends State<UrunListesi> {
  List<Urun> urunler;
  int urunsayisi = 0;
  @override
  Widget build(BuildContext context) {
    if (urunler == null) {
      getUrunler();
    }
    return Scaffold(
      body: urunListesi(),
    );
  }

  void getUrunler() {
    var dbFuture = helper.dbOlustur();
    dbFuture.then((sonuc) {
      var urunlerFuture = helper.getUrunler();
      urunlerFuture.then((data) {
        //print(data);
        List<Urun> urunlerData = new List<Urun>();
        var gelenUrunSayisi = data.length;
        for (int i = 0; i < gelenUrunSayisi; i++) {
          urunlerData.add(Urun.fromObject(data[i]));
        }
        setState(() {
          urunler = urunlerData;
          urunsayisi = gelenUrunSayisi;
        });
      });
    });
  }

  ListView urunListesi() {
    return ListView.builder(
        //scrollDirection: Axis.horizontal,
        itemCount: urunsayisi,
        itemBuilder: (BuildContext context, int i) {
          return Card(
            color: Colors.orange,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    fontFamily: "slabo",
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                this.urunler[i].title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontFamily: "slabo",
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                this.urunler[i].description,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: "slabo",
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          );
        });
  }
}
