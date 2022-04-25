import 'package:flutter/material.dart';

class AppStyle {
  static Color bgColor = const Color(0xFFedf0f8);
  static Color primaryColor = const Color(0xFF1e283e);
  static Color secendColor = const Color(0xFF808080);
  static Color searchBarColor = const Color.fromARGB(255, 226, 229, 236);
  static TextStyle mainTitleStyle = const TextStyle(
      fontFamily: "Vazir",
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20);
  static TextStyle appBarTitleStyle = TextStyle(
      fontFamily: "Vazir",
      color: AppStyle.primaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 16);
  static TextStyle appBarLocationStyle = TextStyle(
      fontFamily: "Vazir",
      color: AppStyle.primaryColor,
      fontWeight: FontWeight.normal,
      fontSize: 14);
  static TextStyle subTitleStyle = TextStyle(
      fontFamily: "Vazir",
      color: secendColor,
      fontWeight: FontWeight.w400,
      fontSize: 18);
  static TextStyle priceTitleStyle = TextStyle(
      fontFamily: "Vazir",
      color: primaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 32);
  static TextStyle sectionTitleStyle = const TextStyle(
      fontFamily: "Vazir",
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20);
  static TextStyle sectionSmallTitleStyle =
      const TextStyle(fontFamily: "Vazir", color: Colors.black, fontSize: 16);
  static TextStyle sectionFoodCategoryTitleStyle = const TextStyle(
      fontFamily: "Vazir",
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 16);
}
