import 'package:flutter/material.dart';
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
    );
  }
}

