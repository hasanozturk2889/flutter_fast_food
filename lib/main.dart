import 'package:flutter/material.dart';
import 'package:flutter_fast_food/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Efsane 28',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLogin(),
    );
  }
}

