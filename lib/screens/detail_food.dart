import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/widgets/button.dart';

class DetailFood extends StatefulWidget {
  @override
  _DetailFoodState createState() => _DetailFoodState();
}

class _DetailFoodState extends State<DetailFood> {
  int qte = 1;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Config.colors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 90,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Text(
                            "Go back",
                            style: Config.styles.titleStyle.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Center(child: Image.asset(Config.assets.food_img3)),
                  ],
                ),
              ),
              Container(
                height: height,
                padding: EdgeInsets.all(20),
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Quinoa Fruit Salad",
                      style: Config.styles.titleStyle.copyWith(fontSize: 32),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (qte > 1) qte--;

                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all()),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  "$qte",
                                  style: Config.styles.titleStyle,
                                )),
                            InkWell(
                              onTap: () {
                                qte++;
                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  color: Config.colors.primaryColor
                                      .withOpacity(.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Config.colors.primaryTextColor,
                                    fontSize: 24),
                                children: [
                              TextSpan(
                                text: "€ ",
                              ),
                              TextSpan(
                                text: "2000",
                              )
                            ])),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Config.colors.subtitleColor.withOpacity(.5),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "One Pack Contains:",
                      style: Config.styles.titleStyle,
                    ),
                    Container(
                      width: 160,
                      height: 2,
                      color: Config.colors.primaryColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                      style: Config.styles.titleStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Config.colors.subtitleColor.withOpacity(.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                      style: Config.styles.titleStyle.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
          padding: EdgeInsets.only(left: 30),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Config.colors.primaryColor.withOpacity(.2)),
                child: Icon(
                  FontAwesomeIcons.heart,
                  size: 30,
                  color: Config.colors.primaryColor,
                ),
              ),
              CButton(
                width: 70,
                height: 25,
                title: "Add to basket",
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
