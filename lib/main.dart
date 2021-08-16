
import 'package:flutter/material.dart';
import 'ui_Pages/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ENCORE',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:loginScreen()
    );
  }
}

