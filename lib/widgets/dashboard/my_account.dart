import 'package:flutter/material.dart';
import 'package:yellow_app/models/optionData.dart';
import 'package:yellow_app/widgets/core/optionGroup.dart';
import 'package:yellow_app/widgets/core/section.dart';

class DashboardMyAccount extends StatefulWidget {
  @override
  _DashboardMyAccountState createState() => _DashboardMyAccountState();
}

class _DashboardMyAccountState extends State<DashboardMyAccount> {
  @override
  Widget build(BuildContext context) {
    return CoreSection(
      title: 'MY ACCOUNT',
      child: CoreOptionGroup(optionsData: [
        OptionData(title: 'Profile Settings', description: ''),
        OptionData(title: 'Notifications', description: ''),
        OptionData(title: 'Privacy', description: ''),
      ]),
    );
  }
}
