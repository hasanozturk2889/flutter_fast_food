import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Detaylar/pideDetay.dart';
import 'package:flutter_fast_food/Listeler/pide.dart';

Widget pideMain() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 30),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pideList.pide.length,
      itemBuilder: (BuildContext context, int i) {
        return ListOfPide(
          isim: pideList.pide[i].isim,
          resim: pideList.pide[i].resim,
          fiyat: pideList.pide[i].fiyat,
          background: pideList.pide[i].background,
          foreground: pideList.pide[i].foreground,
          pideObject: pideList.pide[i],
        );
      },
    ),
  );
}

class ListOfPide extends StatelessWidget {
  const ListOfPide(
      {@required this.foreground,
        @required this.background,
        @required this.fiyat,
        @required this.isim,
        @required this.resim,
        @required this.pideObject});

  final Color foreground;
  final Color background;
  final double fiyat;
  final String isim;
  final String resim;
  final Pide pideObject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => pideDetay(pideObject)));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            width: 225,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 215,
                  child: Image.asset(resim),
                ),
                SizedBox(
                  height: 20,
                ),

                RichText(
                  softWrap: true,
                  text: TextSpan(
                      style: TextStyle(
                          color: foreground, fontSize: 25, fontFamily: "slabo"),
                      children: [
                        TextSpan(text: isim),
                        TextSpan(
                            text: "\nPide",
                            style: TextStyle(fontWeight: FontWeight.w800))
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("$fiyat  TL",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: foreground,
                              fontFamily: "slabo")),
                    ),
                    FavIcon(
                      foreground: foreground,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 40,
        )
      ],
    );
  }
}

class FavIcon extends StatefulWidget {
  const FavIcon({@required this.foreground});

  final Color foreground;

  @override
  _FavIconState createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool isFav;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isFav = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: Icon(
        isFav ? Icons.favorite : Icons.favorite_border,
        color: widget.foreground,
      ),
    );
  }
}