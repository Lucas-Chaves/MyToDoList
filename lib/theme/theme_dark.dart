import 'package:flutter/material.dart';
import './size.dart';
import './colors.dart';

ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
      headline4: TextStyle(
          fontSize: kFontSizeTitleL,
          fontWeight: kFontWeight700,
          color: primaryDarkColor),
      bodyText2: TextStyle(fontSize: kFontSizeTitleM),
      button: TextStyle(fontSize: kFontSizeButtonM, color: whiteColor),
    ),
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent);

TextTheme get getTextTheme => themeData.textTheme;

ThemeData get getTheme => themeData;
