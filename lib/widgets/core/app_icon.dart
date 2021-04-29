import 'package:flutter/material.dart';
import 'package:yellow_app/consts/theme.dart';

class CoreAppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ThemeConsts.APP_ICON_SIZE,
      height: ThemeConsts.APP_ICON_SIZE,
      decoration: BoxDecoration(
        color: ThemeConsts.PRIMARY_COLOR,
        borderRadius: BorderRadius.circular(ThemeConsts.S_RADIUS),
      ),
    );
  }
}
