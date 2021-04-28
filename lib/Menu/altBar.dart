import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/hakkinda.dart';
import 'package:flutter_fast_food/home.dart';

class butonNavigation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -3),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 10)
          ],
          color: Colors.white,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavIcon(iconData: Icons.home_filled, widget: PideHome(),
                context: context),
            buildNavIcon(iconData: Icons.search),
            buildNavIcon(iconData: Icons.shopping_basket),
            buildNavIcon(iconData: Icons.info_outline, widget: Hakkinda(),
                context: context),

          ],
        ),
      ),
    );
  }
}
Widget buildNavIcon({
  @required IconData iconData,
  Widget widget,
  BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => widget));},
    child: Icon(iconData,
        size: 30, color: Colors.orangeAccent,
  ),
  );}


