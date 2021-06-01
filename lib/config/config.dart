import 'package:flutter/painting.dart';

class Config {
  static final colors = _Color();
  static final assets = _Asset();
  static final styles = _Style();
}

class _Color {
  final primaryColor = Color(0xFFFFA451);
  final primaryTextColor = Color(0xFF27214D);
  final accentTextColor = Color(0xFF938DB5);
  final subtitleColor = Color(0xFF5D577E);
  final greenColor = Color(0xFF4CD964);
  final backgroundTextField = Color(0xFFF3F1F1);
  final hintColor = Color(0xFFC2BDBD);
}

class _Asset {
  final splash_img = "assets/images/splash_img.png";
  final welcome_img = "assets/images/basket_of_fruits1.png";
  final name_page = "assets/images/basket_of_fruits2.png";
  final food_img1 = "assets/images/f1.png";
  final food_img2 = "assets/images/f2.png";
  final food_img3 = "assets/images/f3.png";
  final food_img4 = "assets/images/f1.png";
  final food_img5 = "assets/images/f5.png";
  final panier = "assets/images/panier.png";
  final filter1 = "assets/images/filter1.png";
  final filter2 = "assets/images/filter2.png";
}

class _Style {
  final titleStyle = TextStyle(
      fontSize: 20,
      color: Config.colors.primaryTextColor,
      fontWeight: FontWeight.w500);
}
