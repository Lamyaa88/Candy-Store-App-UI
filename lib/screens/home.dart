import 'package:candy/Widgets/custom_widgets.dart';
import 'package:candy/constants/colors.dart';
import 'package:candy/screens/item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'cart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Container(
          child: Stack(
        children: [
          Center(
            child: Container(
                height: height,
                child: Image.asset(
                  "assets/don.png",
                  fit: BoxFit.cover,
                )),
          ),
          Column(
            children: [
              CustomHeightSizedBox(percentage: .03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      SystemChannels.platform
                          .invokeMethod('SystemNavigator.pop');
                    },
                    child: CustomImage(
                        path: "assets/previous.png",
                        givenHeight: height * .1,
                        givenWidth: width * .2),
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
                        text: "Hi !",
                        size: 20,
                        color: null,
                        weight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CustomText(
                        text: "Choose Your Best Candy",
                        size: 20,
                        color: null,
                        weight: FontWeight.bold),
                  )
                ],
              ),
              CustomHeightSizedBox(percentage: .03),
              Expanded(child: _buildBody())
            ],
          )
        ],
      )),
    );
  }

  Widget itemCard() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) {
              return ItemDetails();
            },
            transitionsBuilder: (context, animation8, animation15, child) {
              return FadeTransition(
                opacity: animation8,
                child: child,
              );
            },
            transitionDuration: Duration(milliseconds: 100),
          ),
        );
      },
      borderRadius: BorderRadius.all(Radius.circular(height * .03)),
      splashColor: mainColor,
      child: Container(
        height: height * .42,
        width: width * .44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(height * .03),
            ),
            color: Colors.white),
        child: Column(
          children: [
            CustomHeightSizedBox(percentage: .03),
            Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(height * .1),
                  child: Image.asset(
                    "assets/candy1.jpg",
                    fit: BoxFit.cover,
                  )),
              height: 80,
              width: 80,
              decoration: BoxDecoration(shape: BoxShape.circle),
            ),
            CustomHeightSizedBox(percentage: .02),
            Container(
              width: width * .4,
              child: CustomText(
                text:
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit eiusmod tempor",
                size: height * .015,
                color: mainColor,
                weight: FontWeight.normal,
              ),
            ),
            CustomHeightSizedBox(percentage: .02),
            CustomText(
              text: "LE 79.9",
              size: height * .015,
              color: mainColor,
              weight: FontWeight.bold,
            ),
            CustomHeightSizedBox(percentage: .03),
            CustomButton(
              givenHeight: height * .044,
              givenWidth: width * .3,
              buttonColor: mainColor,
              text: "Add to cart ",
              fontSize: height * .017,
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
              radius: height * .03,
              fontWieght: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }

  _buildBody() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(bottom: height * .02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                itemCard(),
                itemCard(),
              ],
            ),
          );
        });
  }
}
