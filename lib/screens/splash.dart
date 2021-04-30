import 'package:flutter/material.dart';

import 'package:yellow_app/models/user.dart';
import 'package:yellow_app/screens/dashboard.dart';
import 'package:yellow_app/screens/signin.dart';
import 'package:yellow_app/utils/storage.dart';
import 'package:yellow_app/widgets/core/loading.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _getUser() async {
    User user = await storageUtil.getUser();
    if (user.token != null) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => DashboardScreen()));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => SigninScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CoreLoading()),
    );
  }
}
