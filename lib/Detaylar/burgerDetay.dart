import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Listeler/burger.dart';

class burgerDetay extends StatelessWidget {
  burgerDetay(this.burgerObject);



  final Burger burgerObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                BackgroundArc(burgerObject.background),
                ForegroundContent(burgerObject: burgerObject)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ForegroundContent extends StatelessWidget {
  const ForegroundContent({@required this.burgerObject});

  final Burger burgerObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 70, left: 50),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, size: 30),
              ),
            ),
          ),
        ),
        BurgerImage(burgerObject.resim),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 105, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleText(burgerObject.isim),
              SizedBox(height: 20),
              StarRating(burgerObject.starRating),
              SizedBox(height: 20),
              Description(burgerObject.detay),
              SizedBox(height: 20),
              Fiyat(burgerObject.fiyat),
              SizedBox(
                height: 20,
              ),
              BottomButtons(),
              SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Fiyat extends StatelessWidget {
  final double fiyat;

  const Fiyat(this.fiyat);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$fiyat TL",
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
    );
  }
}

class BottomButtons extends StatefulWidget {
  @override
  _BottomButtonsState createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  bool isFav = false;
  bool isCart = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isFav = false;
    isCart = false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border:
              Border(bottom: BorderSide(color: Colors.black, width: 5))),
          child: FlatButton(
            onPressed: () {
              setState(() {
                isCart = !isCart;
              });
            },
            child: Text(
              isCart ? "Sepetten Sil" : "Sepete Ekle",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              isFav = !isFav;
            });
          },
          child: Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav ? Colors.red : Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 3,
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  final String desc;

  const Description(this.desc);

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      softWrap: true,
      style: TextStyle(
          color: Colors.black87,
          letterSpacing: 1.3,
          fontSize: 17,
          textBaseline: TextBaseline.alphabetic),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(rating.toString(),
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 25,
        )
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(this.burgerName);

  final String burgerName;
  final double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: burgerName,
            style: TextStyle(
                color: Colors.black,
                fontSize: _fontSize,
                fontFamily: "slabo",
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: " Burger",
            style: TextStyle(
                color: Colors.black,
                fontSize: _fontSize,
                fontFamily: "slabo",
                fontWeight: FontWeight.w600))
      ]),
    );
  }
}

class BurgerImage extends StatelessWidget {
  final String imageURI;

  const BurgerImage(this.imageURI);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Image.asset(imageURI),
    );
  }
}
class BackgroundArc extends StatelessWidget {
  const BackgroundArc(this.background);

  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: BackgroundPainter(background),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  BackgroundPainter(this.color);

  final Color color;

  Path path = Path();

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint painter = Paint()..color = color;
    path.moveTo(250, 0);

    /*
      these are very absolute coordinates, thus they are not efficient when you open the app in landscape mode.
      Try finding how you can make them relative to the screen.
      Hint: You would have to use the size parameter which is being passed.
    */

    path.quadraticBezierTo(150, 125, 240, 270);
    path.quadraticBezierTo(300, 345, 450, 350);

    path.lineTo(500, 0);

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}