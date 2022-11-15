import 'package:ecommerce_app/LoginAndRegister/ProductoPage.dart';
import 'package:ecommerce_app/view/component/Index.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/LoginAndRegister/login_screen.dart';
import 'package:ecommerce_app/LoginAndRegister/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Dashboard(),
      routes: {
        "register" : (context) => RegisterPage(),
        "añadir" : (context) => ProductoPage(),
        "login" : (context) => LoginScreen(),
      },
    );
  }
}


