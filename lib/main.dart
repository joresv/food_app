import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/splashScreen.dart';
import 'package:food_app/screens/welcome.dart';
import 'package:food_app/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "brandgro",
        primaryColor: Config.colors.primaryColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashWidget(
        child: SplashScreen(),
        nextPage: Welcome(),
        time: 6,
      ),
    );
  }
}
