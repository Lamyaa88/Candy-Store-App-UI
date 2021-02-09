import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/start2.dart';
import 'package:flutter/material.dart';

class Start1 extends StatefulWidget {
  @override
  _Start1State createState() => _Start1State();
}

class _Start1State extends State<Start1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: height * .30,
              width: width * .7,
              child: Image.asset("assets/candyStore.png"),
            ),
            CustomImage(
                path: "assets/don2.png",
                givenHeight: height * .4,
                givenWidth: width * .4),
            CustomHeightSizedBox(percentage: .08),
            CustomButton(
                givenHeight: height * .06,
                givenWidth: width * .7,
                buttonColor: mainColor,
                text: "Let\'s Order a Candy ",
                fontSize: 20,
                fontWieght: FontWeight.bold,
                textColor: Colors.white,
                onTapFunction: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) {
                        return Start2();
                      },
                      transitionsBuilder:
                          (context, animation10, animation5, child) {
                        return FadeTransition(
                          opacity: animation10,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 100),
                    ),
                  );
                },
                radius: 30)
          ],
        ),
      ),
    );
  }
}
