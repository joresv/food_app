import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/functions.dart';
import 'package:food_app/screens/detail_food.dart';
import 'package:food_app/widgets/button.dart';
import 'package:food_app/widgets/custom_tab_bar.dart';
import 'package:food_app/widgets/food.dart';
import 'package:food_app/widgets/textfield.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Image.asset(Config.assets.filter1),
            actions: [
              Column(
                children: [
                  Image.asset(Config.assets.panier),
                  Text(
                    "my basket",
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Tony, What fruit salad\ncombo do you want today?",
                  style: Config.styles.titleStyle.copyWith(fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CTextField(
                      hint: "Search for fruit salad combos",
                      prefix: Icon(
                        Icons.search,
                        color: Config.colors.hintColor,
                        size: 30,
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(Config.assets.filter2)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Recommended Combo",
                  style: Config.styles.titleStyle.copyWith(fontSize: 24),
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  crossAxisCount: 2,
                  childAspectRatio: .9,
                  crossAxisSpacing: 20,
                  children: [
                    FoodWidget(
                      onTap: () {
                        route(context, DetailFood());
                      },
                      asset: Config.assets.food_img1,
                      title: "Honey lime combo",
                      price: "2000",
                      devise: "€",
                    ),
                    FoodWidget(
                      asset: Config.assets.food_img1,
                      title: "Berry mango combo",
                      price: "8000",
                      devise: "€",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTabBar(
                  titles: ["Hottest", "Popular", "New combo", "Top"],
                  onChanged: (value) {
                    page = value;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 230,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      itemCount: 10,
                      itemBuilder: (_, i) {
                        return Container(
                          margin: EdgeInsets.only(right: 20),
                          child: FoodWidget(
                            asset: Config.assets.food_img1,
                            title: "Berry mango combo",
                            price: "8000",
                            devise: "€",
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
