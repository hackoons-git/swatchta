import 'package:flutter/material.dart';
import 'package:flutterappp/Home/admin_homescreen.dart';
import 'package:flutterappp/Home/graph.dart';
import 'Authentication/admin_login.dart';
import 'Theme/userTheme.dart';


void main() => runApp(Swatcha());

class Swatcha extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swatcha',
      theme: userTheme(),
      home: LogIn(),

      routes: {
        '/HomeAdmin' : (context) => HomeAdmin(),
        '/LogIn' : (context) => LogIn(),
        '/GraphScreen' : (context) => GraphScreen(),
      }
    );
  }
}

