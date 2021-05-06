import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/screens/splash.dart';
import 'package:yellow_app/utils/storage.dart';
import 'package:yellow_app/widgets/core/spacer.dart';

import 'package:yellow_app/widgets/dashboard/header.dart';
import 'package:yellow_app/widgets/dashboard/connected_apps.dart';
import 'package:yellow_app/widgets/dashboard/help.dart';
import 'package:yellow_app/widgets/dashboard/my_account.dart';
import 'package:yellow_app/extension/iterable.dart';

class DashboardScreen extends StatelessWidget {
  Future<void> _onSignOut(BuildContext context) async {
    await storageUtil.deleteUser();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  Widget _signOutButton(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () => _onSignOut(context),
            child: BodyText2('Sign Out')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DashboardHeader(),
            DashboardConnectedApps(),
            DashboardMyAccount(),
            DashboardHelp(),
            _signOutButton(context),
            Container(),
          ].addBetween(CoreSpacer(height: ThemeConsts.XXL_PAD)),
        ),
      ),
    );
  }
}
