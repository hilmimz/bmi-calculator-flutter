import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/calculator_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color.fromARGB(255,255,255,255),
        scaffoldBackgroundColor: Color.fromARGB(255, 250, 250, 250),
      ),
      home: CalculatorScreen(),
    );

  }
}