import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/home.dart';
import 'package:candy/screens/singup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    text: "Log In",
                    size: 30,
                    color: null,
                    weight: FontWeight.bold)
              ],
            ),
            CustomHeightSizedBox(percentage: .1),
            CustomTextField(
              hint: 'Email',
              secure: false,
              inputType: TextInputType.emailAddress,
            ),
            CustomHeightSizedBox(percentage: .03),
            CustomTextField(
              hint: 'Password',
              secure: false,
              inputType: TextInputType.text,
            ),
            CustomHeightSizedBox(percentage: .01),
            Container(
                padding: EdgeInsets.only(left: width * .5),
                child: CustomInkWell(
                  text: "forget password ?",
                  size: 10,
                  weight: FontWeight.bold,
                  onTap: () {},
                )),
            CustomHeightSizedBox(percentage: .02),
            CustomHeightSizedBox(percentage: .08),
            CustomButton(
                givenHeight: height * .09,
                givenWidth: width * .7,
                buttonColor: mainColor,
                text: "Log In ",
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
                    text: "Don\'t have an account ? ",
                    size: 13,
                    color: null,
                    weight: null),
                CustomInkWell(
                    text: "Sign up",
                    size: 18,
                    color: null,
                    weight: FontWeight.bold,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return SignUp();
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
