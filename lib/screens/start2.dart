import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/login.dart';
import 'package:candy/screens/singup.dart';
import 'package:flutter/material.dart';

class Start2 extends StatefulWidget {
  @override
  _Start2State createState() => _Start2State();
}

class _Start2State extends State<Start2> {
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
                text: "Creat an account",
                fontSize: 20,
                fontWieght: FontWeight.bold,
                textColor: Colors.white,
                onTapFunction: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) {
                        return SignUp();
                      },
                      transitionsBuilder:
                          (context, animation2, animation20, child) {
                        return FadeTransition(
                          opacity: animation2,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 10),
                    ),
                  );
                },
                radius: 30),
            CustomHeightSizedBox(percentage: .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: "Already have an account ? ",
                    size: 13,
                    color: null,
                    weight: null),
                CustomInkWell(
                    text: "Log in",
                    size: 18,
                    color: null,
                    weight: FontWeight.bold,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return Login();
                          },
                          transitionsBuilder:
                              (context, animation2, animation20, child) {
                            return FadeTransition(
                              opacity: animation2,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 10),
                        ),
                      );
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
