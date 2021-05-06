import 'package:flutter/material.dart';
import 'package:yellow_app/consts/theme.dart';

class DashboardAppCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ThemeConsts.DASHBOARD_APP_CARD_SIZE,
      height: ThemeConsts.DASHBOARD_APP_CARD_SIZE,
      decoration: BoxDecoration(
        color: ThemeConsts.CARD_BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(ThemeConsts.M_PAD),
      ),
    );
  }
}
