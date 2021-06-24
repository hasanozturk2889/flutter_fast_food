import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/altBar.dart';
import 'package:flutter_fast_food/home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Hakkında'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  width: 150.0,
                  height:100.0,
                  image: AssetImage('assets/images/logo.PNG'),
                ),
                SizedBox(height: 20,),
                Center(
                  child: FadeAnimatedTextKit(
                    text:[
                      '\t\t\t\t Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR'
                      ' tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA'
                      ' dersi kapsamında 203301103 numaralı '
                      'Hasan ÖZTÜRK tarafından 25 Haziran 2021 günü yapılmıştır.'],
                      textStyle: TextStyle(fontSize: 20, fontFamily: 'slabo'),

                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PideHome()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    child: Text(
                      'Anasayfaya Dön',
                      style: TextStyle(fontSize: 15, fontFamily: 'slabo',fontWeight: FontWeight.w800),
                      softWrap: true,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
