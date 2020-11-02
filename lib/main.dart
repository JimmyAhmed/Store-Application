import 'package:elsouq/pages/Home.dart';
import 'package:elsouq/pages/Categories.dart';
import 'package:elsouq/pages/PhoneDetials.dart';
import 'package:elsouq/pages/Phones.dart';
import 'package:elsouq/pages/text.dart';
import 'package:flutter/material.dart';

//import 'package:carousel_pro/carousel_pro.dart';
//import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Start Here !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      debugShowCheckedModeBanner: false,
      title: "Elsouq",
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Test(),
      routes: {
        'Home': (context) {
          return Home();
        },
        'Category': (context) {
          return Category();
        },
        'Phones': (context) {
          return Phones();
        },
        'PhoneDetials': (context) {
          return PhoneDetials();
        }
      },
    );
  }
}
