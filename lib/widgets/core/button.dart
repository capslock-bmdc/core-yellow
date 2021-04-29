import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';
import 'package:yellow_app/consts/theme.dart';

class CoreButton extends StatelessWidget {
  CoreButton({
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: ThemeConsts.M_PAD,
          horizontal: ThemeConsts.XXL_PAD,
        ),
        decoration: BoxDecoration(
          color: ThemeConsts.PRIMARY_COLOR,
          borderRadius: BorderRadius.circular(ThemeConsts.M_RADIUS),
        ),
        child: ButtonText(text),
      ),
    );
  }
}
