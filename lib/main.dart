import 'package:candy/constants/colors.dart';
import 'package:candy/screens/splash.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(
          primaryColor: mainColor,
          accentColor: mainColor,
          fontFamily: "Segoe UI",
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: mainColor,
            displayColor: Colors.blue,
          ))));
}
