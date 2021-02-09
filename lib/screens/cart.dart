import 'dart:ui';
import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:flutter/material.dart';
import 'delivery_details.dart';
import 'home.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomHeightSizedBox(percentage: .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: width * .2, right: width * .2),
                      child: CustomImage(
                          path: "assets/candyStore.png",
                          givenHeight: height * .1,
                          givenWidth: width * .2),
                    ),
                    InkWell(
                      onTap: () {
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
                      child: CustomImage(
                          path: "assets/plus.png",
                          givenHeight: height * .07,
                          givenWidth: width * .2),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: CustomText(
                          text: "Your Orders ",
                          size: 16,
                          color: null,
                          weight: FontWeight.bold),
                    )
                  ],
                ),
                CustomHeightSizedBox(percentage: .06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: height * .5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomHeightSizedBox(percentage: .06),
                          CustomImage(
                              path: "assets/cupCake.png",
                              givenHeight: height * .2,
                              givenWidth: width * .2),
                        ],
                      ),
                    ),
                    Container(
                      width: width * .6,
                      height: height * .5,
                      child: Column(
                        children: [
                          CustomHeightSizedBox(percentage: .08),
                          Row(
                            children: [
                              CustomText(
                                  text: "Strawberry Cup Cake",
                                  size: width * .03,
                                  color: null,
                                  weight: FontWeight.bold),
                              CustomWidthSizedBox(percentage: .04),
                              CustomText(
                                  text: "LE 79.9",
                                  size: width * .03,
                                  color: null,
                                  weight: FontWeight.bold),
                            ],
                          ),
                          CustomHeightSizedBox(percentage: .04),
                          Row(
                            children: [
                              Container(
                                width: width * .3,
                                child: CustomText(
                                  text:
                                      "Lorem ipsum dolor sit amet,consectetur tempor",
                                  size: height * .015,
                                  color: mainColor,
                                  weight: FontWeight.normal,
                                ),
                              ),
                              CustomWidthSizedBox(percentage: .04),
                            ],
                          ),
                          SizedBox(
                            height: height * .1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: CustomText(
                                      text: "+",
                                      size: 25,
                                      color: mainColor,
                                      weight: FontWeight.w900),
                                  onTap: () {
                                    setState(() {
                                      counter++;
                                    });
                                  },
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(height * .03)),
                                  splashColor: secondaryColor,
                                ),
                                CustomWidthSizedBox(percentage: .05),
                                InkWell(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(height * .03)),
                                  splashColor: secondaryColor,
                                  onTap: () {},
                                  child: Center(
                                    child: Container(
                                      height: height * .04,
                                      width: width * .15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: mainColor,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(height * .1))),
                                      child: Center(
                                        child: Center(
                                            child:
                                                CustomText(text: "$counter")),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomWidthSizedBox(percentage: .05),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      counter--;
                                    });
                                  },
                                  child: CustomText(
                                      text: "-",
                                      size: 33,
                                      color: mainColor,
                                      weight: FontWeight.w900),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(height * .03)),
                                  splashColor: secondaryColor,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: height * .001,
                            width: width * .7,
                            color: greyColor,
                          ),
                          CustomHeightSizedBox(percentage: .05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                  text: "Total",
                                  size: width * .035,
                                  color: null,
                                  weight: FontWeight.bold),
                              Container(
                                padding: EdgeInsets.only(right: width * .08),
                                child: CustomText(
                                    text: "LE  239.7",
                                    size: width * .035,
                                    color: null,
                                    weight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(height * .03)),
                  splashColor: secondaryColor,
                  onTap: () {
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
                  child: Container(
                    height: height * .09,
                    width: width * .8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: mainColor, width: 2),
                        borderRadius:
                            BorderRadius.all(Radius.circular(height * .04))),
                    child: Center(
                      child: CustomText(
                        text: "Add more candy",
                        size: height * .025,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                CustomHeightSizedBox(percentage: .03),
                CustomButton(
                  givenHeight: height * .09,
                  givenWidth: width * .8,
                  buttonColor: mainColor,
                  text: "Order pick up",
                  fontSize: height * .025,
                  textColor: Colors.white,
                  onTapFunction: () {
                    Navigator.push(
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
                  radius: height * .04,
                  fontWieght: FontWeight.bold,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
