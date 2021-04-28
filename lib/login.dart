import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/titleBar.dart';
import 'package:flutter_fast_food/home.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal:20.0,vertical: 50),
                child: Column(
                  children: [
                    titleBar(),
                    SizedBox(height: 80),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Kullanıcı Adı',
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Şifre',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                        FlatButton(
                          child: Text('Şifremi Unuttum'),
                          onPressed: () {
                            //Şifremi Unuttum
                          },
                          //color: Colors.orangeAccent,
                          ),

                        ElevatedButton(
                          child: Text('Giriş'),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => PideHome()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                        ),

                    SizedBox(
                      height: 130,
                    ),
                    ElevatedButton(
                      child: Text('Hesap Oluştur'),
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
