import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fast_food/screens/grafik.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class dosyaislemi extends StatefulWidget {
  @override
  _dosyaislemiState createState() => _dosyaislemiState();
}

class _dosyaislemiState extends State<dosyaislemi> {
  var mytextController = TextEditingController();
//klasor olusturma isi
  Future<String> get getklasorYolu async {
    Directory klasor = await getApplicationDocumentsDirectory();
    debugPrint("klasör yolu:" + klasor.path);
    return klasor.path;
  }

//dosya olusturma isi
  Future<File> get dosyaOlustur async {
    var olusturulacakDosyaninKlasorununYolu = await getklasorYolu;
    return File(olusturulacakDosyaninKlasorununYolu + "/myDosya.txt");
  }

//Dosya okuma
  Future<String> dosyaOku() async {
    try {
      var myDosya = await dosyaOlustur;
      String dosyaIcerigi = await myDosya.readAsStringSync();
      return dosyaIcerigi;
    } catch (exception) {
      return "Hata çıktı $exception";
    }
  }

  // dosyaya yaz
  Future<File> dosyayaYaz(String yazilacakString) async {
    var myDosya = await dosyaOlustur;
    return myDosya.writeAsString(yazilacakString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dosya İşlemleri",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontFamily: "slabo",
              color: Colors.black),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mytextController,
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: "buraya yazılacak değerler kaydedileri"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: _dosyaYaz,
                  color: Colors.orange,
                  child: Text("Dosyaya Yaz",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: "slabo",
                      color: Colors.black),),
                ),
                RaisedButton(
                  onPressed: _dosyaOku,
                  color: Colors.orange,
                  child: Text("Dosyadan Oku",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: "slabo",
                      color: Colors.black),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  void _dosyaYaz() {
    dosyayaYaz(mytextController.text.toString());
  }

  void _dosyaOku() async {
    debugPrint(await dosyaOku());
    //  dosyaOku().then((icerik){
    //  debugPrint(icerik);
    //});
  }
}
