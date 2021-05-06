import 'package:flutter/material.dart';
import 'package:yellow_app/widgets/core/section.dart';

class DashboardHelp extends StatefulWidget {
  @override
  _DashboardHelpState createState() => _DashboardHelpState();
}

class _DashboardHelpState extends State<DashboardHelp> {
  @override
  Widget build(BuildContext context) {
    return CoreSection(
      title: 'HELP & FEEDBACK',
      child: Text('todo'),
    );
  }
}
