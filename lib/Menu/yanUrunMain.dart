import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Detaylar/yanUrunDetay.dart';
import 'package:flutter_fast_food/Listeler/yanUrun.dart';


Widget yanUrunMain() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 30),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: yanurunList.yanurun.length,
      itemBuilder: (BuildContext context, int i) {
        return ListOfYanUruns(
          isim: yanurunList.yanurun[i].isim,
          resim: yanurunList.yanurun[i].resim,
          fiyat: yanurunList.yanurun[i].fiyat,
          background: yanurunList.yanurun[i].background,
          foreground: yanurunList.yanurun[i].foreground,
          yanurunObject: yanurunList.yanurun[i],
        );
      },
    ),
  );
}

class ListOfYanUruns extends StatelessWidget {
  const ListOfYanUruns(
      {@required this.foreground,
        @required this.background,
        @required this.fiyat,
        @required this.isim,
        @required this.resim,
        @required this.yanurunObject});

  final Color foreground;
  final Color background;
  final double fiyat;
  final String isim;
  final String resim;
  final YanUrun yanurunObject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => yanurunDetay(yanurunObject)));
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
                  height: 180,
                  child: Image.asset(resim),
                ),
                SizedBox(
                  height: 30,
                ),

                RichText(
                  softWrap: true,
                  text: TextSpan(
                      style: TextStyle(
                          color: foreground, fontSize: 25, fontFamily: "slabo"),
                      children: [
                        TextSpan(text: isim,style: TextStyle(fontWeight: FontWeight.w800))
                        ]),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("$fiyat TL",
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