import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/altBar.dart';
import 'package:flutter_fast_food/Menu/hakkinda.dart';
import 'package:flutter_fast_food/Menu/menu.dart';
import 'package:flutter_fast_food/Menu/pide2main.dart';
import 'package:flutter_fast_food/Menu/titleBar.dart';
import 'package:flutter_fast_food/screens/dosya.dart';
import 'package:flutter_fast_food/screens/grafik.dart';
import 'package:flutter_fast_food/screens/iletisim.dart';

class PideHome extends StatefulWidget {
  PideHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PideHomeState createState() => _PideHomeState();
}

class _PideHomeState extends State<PideHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Efsane-28",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30,fontFamily: "slabo",color: Colors.black),),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  Text('Efsane 28', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40,fontFamily: "slabo",color: Colors.white),),
                ],
              ),
            ),
            ListTile(
              title: Text('İletişim', style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,fontFamily: "slabo",color: Colors.orangeAccent,),),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => iletisim()));
              },
            ),
            ListTile(
              title: Text('Ürün Listesi', style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,fontFamily: "slabo",color: Colors.orangeAccent,),),
              onTap: () {
               Navigator.push(context,
                 MaterialPageRoute(builder: (context) => Eticaret()));
              },
            ),
            ListTile(
              title: Text(
                'Hakkımızda',
                style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,fontFamily: "slabo",color: Colors.orangeAccent,),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hakkinda()));
              },
            ),
            ListTile(
              title: Text(
                'Dosya İşlemleri',
                style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,fontFamily: "slabo",color: Colors.orangeAccent,),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => dosyaislemi()));
              },
            ),
            ListTile(
              title: Text(
                'İstatistikler',
                style: TextStyle(fontWeight:FontWeight.w500,fontSize: 30,fontFamily: "slabo",color: Colors.orangeAccent,),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => grafik()));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Column(
                      children: <Widget>[
                        titleBar(),
                        Menu(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            butonNavigation(),
          ],
        ),
      ),
    );
  }
}
