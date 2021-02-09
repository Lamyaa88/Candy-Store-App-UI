import 'dart:async';
import 'dart:ui';

import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/cart.dart';
import 'package:candy/screens/home.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
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
                        Navigator.push(
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
                          text: "Strawberry Cup Cake ",
                          size: 16,
                          color: null,
                          weight: FontWeight.bold),
                    )
                  ],
                ),
                CustomImage(
                    path: "assets/cupCake.png",
                    givenHeight: height * .45,
                    givenWidth: width * .4),
                Container(
                  padding: EdgeInsets.only(left: width * .1, right: width * .1),
                  child: CustomText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                          "incididunt ut labore et dolore magna aliqua. enim ad minim veniam, quis nostrud exercitation"
                          " ullamco",
                      size: height * .018,
                      color: Colors.black,
                      weight: null),
                ),
                CustomHeightSizedBox(percentage: .04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: width * .1),
                      child: Row(
                        children: [
                          CustomImage(
                              path: "assets/circle.png",
                              givenHeight: 15,
                              givenWidth: 15),
                          CustomWidthSizedBox(percentage: .01),
                          CustomText(
                              text: "Strawberry",
                              size: 15,
                              color: Colors.black,
                              weight: null),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: width * .1),
                      child: Row(
                        children: [
                          CustomImage(
                              path: "assets/circle.png",
                              givenHeight: 15,
                              givenWidth: 15),
                          CustomWidthSizedBox(percentage: .01),
                          CustomText(
                              text: "Sour Cream ",
                              size: 15,
                              color: Colors.black,
                              weight: null),
                        ],
                      ),
                    )
                  ],
                ),
                CustomHeightSizedBox(percentage: .07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: width * .1),
                        child: CustomText(
                            text: "LE 79.9",
                            size: 13,
                            color: mainColor,
                            weight: FontWeight.bold)),
//                    InkWell( borderRadius:   BorderRadius.all(Radius.circular(height*.03)),splashColor: secondaryColor,
//
//                      onTap: (){
//                      setState(() {
//                        counter ++;
//
//                      });
//                    },
//                      child: Container(height: height*.04,width: width*.15,decoration: BoxDecoration(color: Colors.white,
//                          border: Border.all(color: mainColor,),
//                          borderRadius: BorderRadius.all(Radius.circular(20))),
//                        child: Center( child: CustomText(text:"+$counter"),),),
//                    ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(height * .03)),
                            splashColor: secondaryColor,
                          ),
                          CustomWidthSizedBox(percentage: .03),
                          InkWell(
                            borderRadius:
                                BorderRadius.all(Radius.circular(height * .03)),
                            splashColor: secondaryColor,
                            onTap: () {},
                            child: Center(
                              child: Container(
                                height: height * .04,
                                width: width * .1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: mainColor,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(height * .1))),
                                child: Center(
                                  child: Center(
                                      child: CustomText(text: "$counter")),
                                ),
                              ),
                            ),
                          ),
                          CustomWidthSizedBox(percentage: .03),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(height * .03)),
                            splashColor: secondaryColor,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: width * .1),
                      child: CustomButton(
                        givenHeight: height * .05,
                        givenWidth: width * .25,
                        buttonColor: mainColor,
                        text: "Add to cart ",
                        fontSize: width * .03,
                        textColor: Colors.white,
                        onTapFunction: () {
                          Navigator.push(
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
                        radius: 20,
                        fontWieght: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
