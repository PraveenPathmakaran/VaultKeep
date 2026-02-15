import 'package:flutter/material.dart';

class Responsive {
  Responsive._();

  //common width 375

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.shortestSide;

  static double iconContainer(BuildContext context) =>
      screenWidth(context) * 0.39; //146 width
  static double innerIconContainer(BuildContext context) =>
      screenWidth(context) * 0.25; //96 width

  static double splashShieldWidth(BuildContext context) =>
      screenWidth(context) * 0.11; //42 width
  static double splashShieldHeight(BuildContext context) =>
      screenWidth(context) * 0.14; //53 width
  static double splashAboutWidth(BuildContext context) =>
      screenWidth(context) * 0.75; //280 width
  static double linearProgressIndicator(BuildContext context) =>
      screenWidth(context) * 0.75; //280 width
}
