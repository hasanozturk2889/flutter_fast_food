import 'package:flutter/material.dart';
import 'package:flutter_fast_food/Menu/titleBar.dart';
import 'package:flutter_fast_food/home.dart';
import 'package:flutter_fast_food/pages/register.dart';
import 'package:flutter_fast_food/service/auth_service.dart';
class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();
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
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'E mail',
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: 'Şifre',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),


                    InkWell(
                      onTap: () {
                        _authService
                            .signIn(
                            _emailController.text, _passwordController.text)
                            .then((value) {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PideHome()));
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange, width: 2),
                            //color: colorPrimaryShade,
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(
                              child: Text(
                                "Giriş yap",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 20,
                                ),
                              )),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                      child: Text('Hesap Oluştur'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));

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
