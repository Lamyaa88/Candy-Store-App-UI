import 'dart:ui';
import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/delivery_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnWay extends StatefulWidget {
  @override
  _OnWayState createState() => _OnWayState();
}

class _OnWayState extends State<OnWay> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomHeightSizedBox(percentage: .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: CustomImage(
                          path: "assets/previous.png",
                          givenHeight: height * .1,
                          givenWidth: width * .2),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) {
                              return DeliveryDetails();
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
                    ),
                    Container(
                      padding: EdgeInsets.only(right: width * .03),
                      child: CustomImage(
                          path: "assets/candyStore.png",
                          givenHeight: height * .15,
                          givenWidth: width * .2),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: CustomText(
                          text: "Thanks For Your Order !",
                          size: 16,
                          color: null,
                          weight: FontWeight.bold),
                    )
                  ],
                ),
                CustomHeightSizedBox(percentage: .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: CustomText(
                          text: "The Candies Are On Its Way!",
                          size: 16,
                          color: null,
                          weight: FontWeight.normal),
                    )
                  ],
                ),
                CustomHeightSizedBox(percentage: .06),
                CustomImage(
                    path: "assets/onWay.png",
                    givenHeight: height * .5,
                    givenWidth: width * .8),
                CustomHeightSizedBox(percentage: .06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      givenHeight: height * .05,
                      givenWidth: width * .4,
                      buttonColor: mainColor,
                      text: "Log out",
                      fontSize: height * .025,
                      textColor: Colors.white,
                      onTapFunction: () {
                        SystemChannels.platform
                            .invokeMethod('SystemNavigator.pop');
                      },
                      radius: 30,
                      fontWieght: FontWeight.bold,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
