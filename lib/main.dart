

import 'package:flutter/material.dart';
import 'package:my_encore/ui_Pages/login_screen.dart';



void main() { runApp(new MaterialApp( home: new MyApp(), )); }

class MyApp extends StatefulWidget {

  @override _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State {
  @override void initState() {
    super.initState();
    new Future.delayed( const Duration(seconds: 5), () =>
        Navigator.pushReplacement( context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.white,
        body: Center(
          child: Container(
              height: MediaQuery.of(context).size.height*1,
              width: MediaQuery.of(context).size.width*1,
              child: Image.asset("assets/images/encore.png",
                  fit: BoxFit.scaleDown
              )
          ),
        ));
  }
}