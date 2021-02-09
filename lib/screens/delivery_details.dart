import 'dart:ui';
import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/cart.dart';
import 'package:candy/screens/on_way.dart';
import 'package:flutter/material.dart';

class DeliveryDetails extends StatefulWidget {
  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
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
                              return Cart();
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
                              return Cart();
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
                          path: "assets/cart.png",
                          givenHeight: height * .1,
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
                          text: "Details",
                          size: 16,
                          color: null,
                          weight: FontWeight.bold),
                    )
                  ],
                ),
                CustomHeightSizedBox(percentage: .03),
                _detailsContainer("Delivery Address ", "assets/location.png",
                    "5,st,Nasr City,Cairo,Egypt"),
                CustomHeightSizedBox(percentage: .03),
                _detailsContainer(
                    "Delivery Time ", "assets/time.png", "As soon as possible"),
                CustomHeightSizedBox(percentage: .03),
                _detailsContainer("Payment Method ", "assets/payment.png",
                    "Cart ending in 9876"),
                CustomHeightSizedBox(percentage: .05),
                Container(
                  width: width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Candies",
                          size: 15,
                          color: greyColor,
                          weight: FontWeight.bold),
                      CustomText(
                          text: "LE 237.7",
                          size: 15,
                          color: greyColor,
                          weight: FontWeight.bold),
                    ],
                  ),
                ),
                CustomHeightSizedBox(percentage: .01),
                Container(
                  width: width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Delivery",
                          size: 15,
                          color: greyColor,
                          weight: FontWeight.bold),
                      CustomText(
                          text: "LE 5.9",
                          size: 15,
                          color: greyColor,
                          weight: FontWeight.bold),
                    ],
                  ),
                ),
                CustomHeightSizedBox(percentage: .03),
                Container(
                  width: width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Total",
                          size: 18,
                          color: mainColor,
                          weight: FontWeight.bold),
                      CustomText(
                          text: "LE 245.6",
                          size: 18,
                          color: mainColor,
                          weight: FontWeight.bold),
                    ],
                  ),
                ),
                CustomHeightSizedBox(percentage: .04),
                CustomButton(
                  givenHeight: height * .07,
                  givenWidth: width * .6,
                  buttonColor: mainColor,
                  text: "Confirm Order",
                  fontSize: height * .025,
                  textColor: Colors.white,
                  onTapFunction: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return OnWay();
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
                  radius: 30,
                  fontWieght: FontWeight.bold,
                )
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget _detailsContainer(String title, String imagePath, String description) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        width: width * .9,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                    text: title, size: 13, color: null, weight: FontWeight.bold)
              ],
            ),
            CustomHeightSizedBox(percentage: .02),
            Container(
              height: height * .0015,
              width: width * .9,
              color: greyColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        child: CustomImage(
                            path: imagePath,
                            givenHeight: height * .08,
                            givenWidth: width * .08)),
                    Container(
                      child: CustomText(
                          text: description,
                          size: 13,
                          color: greyColor,
                          weight: FontWeight.bold),
                    ),
                  ],
                ),
                CustomImage(
                    path: "assets/dropDown.png",
                    givenHeight: height * .08,
                    givenWidth: width * .08),
              ],
            ),
            Container(
              height: height * .0015,
              width: width * .9,
              color: greyColor,
            ),
          ],
        ));
  }
}
