import 'package:flutter/material.dart';

Widget createGridItem(int position) {
  var color = Colors.white;
  var icondata = Icons.add;
  var image=Image(
    width: 150.0,
    height:100.0,
    image: AssetImage('assets/images/logo.PNG'),
  );
  var text=Text("Adres: Muratpaşa/Antalya",style: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 30,
      fontFamily: "slabo",
      color: Colors.black));
  switch (position) {
    case 0:
      color = Colors.cyan;
      icondata = Icons.phone_in_talk;
      text=Text("tel:0535-555-5668\nemail:efsanefastfood@gmail.com",style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 25,
          fontFamily: "slabo",
          color: Colors.black));
      break;
    case 1:
      color = Colors.deepPurple;
      icondata = Icons.add_location;
      break;
    /*case 2:
      color = Colors.orange[300];
      icondata = Icons.library_books;
      break;
    case 3:
      color = Colors.pinkAccent;
      icondata = Icons.access_time;
      break;
    case 4:
      color = Colors.teal[900];
      icondata = Icons.add_shopping_cart;
      break;
    case 5:
      color = Colors.green[600];
      icondata = Icons.list;
      break;*/
  }

  return Builder(builder: (context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
      child: Card(
        elevation: 10,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(color: Colors.white),
        ),
        child: InkWell(
          onTap: () {
            Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("$position numara seçildi ")));
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icondata,
                  size: 40,
                  color: Colors.white,
                ),
               SizedBox(height: 15,),
               image,
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:text,
                  ),

              ],
            ),
          ),
        ),
      ),
    );
    ;
  });
}


class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.greenAccent[400];
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    /* // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}