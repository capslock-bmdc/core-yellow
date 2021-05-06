import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yellow_app/consts/general.dart';
import 'package:yellow_app/consts/theme.dart';

class ThemeUtil {
  Map<String, ThemeData> themes = {
    'default': ThemeData(
      brightness: Brightness.light,
      primaryColor: ThemeConsts.PRIMARY_COLOR,
      accentColor: ThemeConsts.ACCENT_COLOR,
      backgroundColor: ThemeConsts.BACKGROUND_COLOR,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(
            const Radius.circular(ThemeConsts.S_RADIUS),
          ),
        ),
      ),
      fontFamily: ThemeConsts.TEXT_FONT,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          height: 1.2,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: ThemeConsts.LIGHT_TEXT_COLOR,
        ),
        bodyText2: TextStyle(
          height: 1.2,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: ThemeConsts.DARK_TEXT_COLOR,
        ),
        headline1: TextStyle(
          height: 0.9,
          fontSize: 24,
          fontFamily: ThemeConsts.BRAND_FONT,
          fontWeight: FontWeight.w900,
          color: ThemeConsts.DARK_TEXT_COLOR,
        ),
        headline2: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: ThemeConsts.DARK_TEXT_COLOR,
        ),
        button: TextStyle(
          height: 0.9,
          fontSize: 18,
          fontFamily: ThemeConsts.TEXT_FONT,
          fontWeight: FontWeight.w400,
          color: ThemeConsts.LIGHT_TEXT_COLOR,
        ),
        caption: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: ThemeConsts.DISABLED_TEXT_COLOR,
        ),
      ),
    ),
  };

  ThemeData? getTheme() => themes[GeneralConsts.DEFAULT_THEME];
}

ThemeUtil themeUtil = ThemeUtil();
