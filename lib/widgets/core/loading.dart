import 'package:flutter/material.dart';
import 'package:yellow_app/consts/theme.dart';

class CoreLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ThemeConsts.LOADING_SIZE,
      height: ThemeConsts.LOADING_SIZE,
      decoration: BoxDecoration(
        color: ThemeConsts.PRIMARY_COLOR,
        borderRadius: BorderRadius.circular(ThemeConsts.S_RADIUS),
      ),
    );
  }
}
