import 'dart:async';
import 'package:candy/screens/start1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Start1())));
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "assets/rec.png",
                  fit: BoxFit.cover,
                )),
            Center(
              child: Container(
                  height: height,
                  child: Image.asset(
                    "assets/don.png",
                    fit: BoxFit.cover,
                  )),
            ),
            Center(
              child: Container(
                  height: height * .5,
                  child: Image.asset(
                    "assets/candyStore.png",
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ));
  }
}
