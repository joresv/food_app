import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/functions.dart';
import 'package:food_app/screens/welcome2.dart';
import 'package:food_app/widgets/button.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: height(context) / 1.7,
              decoration: BoxDecoration(
                  color: Config.colors.primaryColor,
                  image: DecorationImage(
                      image: AssetImage(Config.assets.welcome_img))),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Get The Freshest Fruit Salad Combo",
                    style: TextStyle(
                        fontSize: 20,
                        color: Config.colors.primaryTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                    style: TextStyle(
                        fontSize: 16,
                        color: Config.colors.subtitleColor,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  CButton(
                    height: 20,
                    title: "Let’s Continue",
                    onPressed: () {
                      route(context, Welcome2());
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
