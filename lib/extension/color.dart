import 'dart:ui';
import 'package:flutter/material.dart';

extension ColorExtension on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';

  MaterialColor toMaterialColor() => MaterialColor(value, {
        50: this.withOpacity(.1),
        100: this.withOpacity(.2),
        200: this.withOpacity(.3),
        300: this.withOpacity(.4),
        400: this.withOpacity(.5),
        500: this.withOpacity(.6),
        600: this.withOpacity(.7),
        700: this.withOpacity(.8),
        800: this.withOpacity(.9),
        900: this.withOpacity(1),
      });
}
