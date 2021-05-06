import 'package:flutter/material.dart';

class ThemeConsts {
  static const String BRAND_FONT = 'CAPSLOCK';
  static const String TEXT_FONT = 'Lato';

  // colors
  static const Color PRIMARY_COLOR = Color(0xffFCE43C);
  static const Color ACCENT_COLOR = Color(0xffF9C361);
  static const Color LIGHT_TEXT_COLOR = Color(0xffffffff);
  static const Color DARK_TEXT_COLOR = Color(0xCC000000);
  static const Color DISABLED_TEXT_COLOR = Color(0x66000000);
  static const Color BACKGROUND_COLOR = Color(0xffF4F4F4);
  static const Color CARD_BACKGROUND_COLOR = Color(0xffeeeeee);

  // padding
  static const double XXL_PAD = 64;
  static const double XL_PAD = 32;
  static const double L_PAD = 24;
  static const double M_PAD = 16;
  static const double S_PAD = 8;
  static const double XS_PAD = 2;

  // radius
  static const double S_RADIUS = 10;
  static const double M_RADIUS = 20;

  // shadows
  static const List<BoxShadow> OUTER_SHADOW = [
    BoxShadow(
      color: Color(0x22000000),
      spreadRadius: 3.0,
      blurRadius: 10.0,
    ),
  ];

  // sizes
  static const double S_ICON_SIZE = 18;
  static const double M_ICON_SIZE = 24;
  static const double L_ICON_SIZE = 36;
  static const double LOADING_SIZE = 36;
  static const double APP_ICON_SIZE = 36;
  static const double DHASHBOARD_HEADER_HEIGHT = 250;
  static const double DHASHBOARD_USER_CARD_SPACEING = 180;
  static const double DHASHBOARD_USER_PROFILE_SIZE = 110;
  static const double DASHBOARD_APP_CARD_SIZE = 160;
}
