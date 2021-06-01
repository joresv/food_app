import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/config/config.dart';

class FoodWidget extends StatelessWidget {
  final String title, devise, price, asset;
  final Function onTap, onFav, onAdd;

  const FoodWidget(
      {Key key,
      this.title,
      this.devise,
      this.price,
      this.asset,
      this.onTap,
      this.onFav,
      this.onAdd})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 190,
      width: 162,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Color.fromRGBO(32, 32, 32, .05),
              offset: Offset(10, 10),
            )
          ]),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(child: Image.asset(asset)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: Config.styles.titleStyle.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: devise + " ",
                          style: TextStyle(
                              color: Config.colors.primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: price,
                          style: TextStyle(
                              color: Config.colors.primaryColor, fontSize: 15),
                        )
                      ])),
                      Container(
                        decoration: BoxDecoration(
                            color: Config.colors.primaryColor.withOpacity(.2),
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Config.colors.primaryColor)),
                        child: Icon(
                          Icons.add,
                          color: Config.colors.primaryColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                right: 0,
                child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.heart,
                      color: Config.colors.primaryColor,
                    ),
                    onPressed: onFav))
          ],
        ),
      ),
    );
  }
}
