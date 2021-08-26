import 'package:flutter/material.dart';
import 'package:telegramui/home.dart';
import 'package:telegramui/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
  debugShowCheckedModeBanner: false,
    title: "TELEGRAM",
    home: 
    Scaffold(
    body:
      Home(),
          
      ),

    );
  }
}
//main file 