import 'dart:ui';

import 'package:flutter/material.dart';

final double screenWidth = window.physicalSize.width;

const Color customGreen = Color(0xFF27B95B);
const Color customGray = Color(0xFF919292);
const Color customWhite = Colors.white;
const Color customBlack = Colors.black;
const Color customErrorRed = Color(0xFFC5032B);

const ColorScheme _colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: customBlack,
    onPrimary: customWhite,
    secondary: customGreen,
    onSecondary: customBlack,
    error: customErrorRed,
    onError: customWhite,
    background: customGray,
    onBackground: customWhite,
    surface: customBlack,
    onSurface: customWhite);

const TextTheme _defaultTextTheme = TextTheme(
  headline1:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: customWhite,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  bodyText2: TextStyle(
      color: customGray,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  subtitle1:
      TextStyle(color: customWhite, fontWeight: FontWeight.w400, fontSize: 12),
  subtitle2:
      TextStyle(color: customGray, fontWeight: FontWeight.w400, fontSize: 12),
);

const TextTheme _smallTextTheme = TextTheme(
  headline1:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: customWhite, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
      color: customWhite,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  bodyText2: TextStyle(
      color: customGray,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  subtitle1:
      TextStyle(color: customWhite, fontWeight: FontWeight.w400, fontSize: 10),
  subtitle2:
      TextStyle(color: customGray, fontWeight: FontWeight.w400, fontSize: 10),
);

class MyTheme {
  final globalTheme = ThemeData(
      colorScheme: _colorScheme,
      textTheme: screenWidth < 500 ? _smallTextTheme : _defaultTextTheme,
      fontFamily: "Roboto");
}
