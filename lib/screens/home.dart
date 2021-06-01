import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/widgets/button.dart';
import 'package:food_app/widgets/custom_tab_bar.dart';
import 'package:food_app/widgets/food.dart';
import 'package:food_app/widgets/textfield.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            CButton(
              title: "Mon Bouton",
              color: Colors.transparent,
              titleColor: Config.colors.primaryColor,
              border: true,
            ),
            CTextField(
              hint: "Tony",
            ),
            SizedBox(
              height: 20,
            ),
            FoodWidget(
              title: "Honey lime combo",
              asset: Config.assets.food_img1,
              devise: "€",
              price: "8500",
            ),
            CustomTabBar(
              titles: ["Hottest", "Popular", "New combo", "Top"],
            )
          ],
        ),
      ),
    );
  }
}
