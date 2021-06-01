import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/functions.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/home_page.dart';
import 'package:food_app/widgets/button.dart';
import 'package:food_app/widgets/textfield.dart';

class Welcome2 extends StatelessWidget {
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
                      image: AssetImage(Config.assets.name_page))),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "What is your firstname?",
                    style: TextStyle(
                        fontSize: 20,
                        color: Config.colors.primaryTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CTextField(
                    hint: "Tony",
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CButton(
                    height: 20,
                    title: "Start Ordering",
                    onPressed: () {
                      route(context, HomePage());
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
