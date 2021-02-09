import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/home.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImage(
                    path: "assets/candyStore.png",
                    givenHeight: height * .2,
                    givenWidth: width * .2)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: "Sign up",
                    size: 30,
                    color: null,
                    weight: FontWeight.bold)
              ],
            ),
            CustomHeightSizedBox(percentage: .1),
            CustomTextField(
              hint: 'name',
              secure: false,
              inputType: TextInputType.text,
            ),
            CustomHeightSizedBox(percentage: .03),
            CustomTextField(
              hint: 'Email',
              secure: false,
              inputType: TextInputType.emailAddress,
            ),
            CustomHeightSizedBox(percentage: .03),
            CustomTextField(
              hint: 'Password',
              secure: true,
              inputType: TextInputType.text,
            ),
            CustomHeightSizedBox(percentage: .08),
            CustomButton(
                givenHeight: height * .09,
                givenWidth: width * .7,
                buttonColor: mainColor,
                text: "Sign up",
                fontSize: 30,
                fontWieght: FontWeight.bold,
                textColor: Colors.white,
                onTapFunction: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) {
                        return Home();
                      },
                      transitionsBuilder:
                          (context, animation8, animation15, child) {
                        return FadeTransition(
                          opacity: animation8,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 100),
                    ),
                  );
                },
                radius: 15),
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
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return Login();
                          },
                          transitionsBuilder:
                              (context, animation8, animation15, child) {
                            return FadeTransition(
                              opacity: animation8,
                              child: child,
                            );
                          },
                          transitionDuration: Duration(milliseconds: 100),
                        ),
                      );
                    })
              ],
            )
          ],
        )),
      ),
    );
  }
}
