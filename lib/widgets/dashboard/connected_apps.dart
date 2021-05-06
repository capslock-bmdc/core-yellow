import 'package:flutter/material.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/widgets/core/section.dart';
import 'package:yellow_app/widgets/core/spacer.dart';
import 'package:yellow_app/widgets/dashboard/app_card.dart';
import 'package:yellow_app/extension/iterable.dart';

class DashboardConnectedApps extends StatefulWidget {
  @override
  _DashboardConnectedAppsState createState() => _DashboardConnectedAppsState();
}

class _DashboardConnectedAppsState extends State<DashboardConnectedApps> {
  @override
  Widget build(BuildContext context) {
    return CoreSection(
      padContent: false,
      title: 'CONNECTED APPS',
      child: Container(
        height: ThemeConsts.DASHBOARD_APP_CARD_SIZE,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(), // this container is here to add padding in the begining
            DashboardAppCard(),
            DashboardAppCard(),
            DashboardAppCard(),
            DashboardAppCard(),
          ].addBetween(CoreSpacer(width: ThemeConsts.M_PAD)),
        ),
      ),
    );
  }
}
