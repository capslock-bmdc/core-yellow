import 'package:flutter/material.dart';
import 'package:yellow_app/screens/signin.dart';
import 'package:yellow_app/widgets/core/loading.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _getUser() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => SigninScreen()));
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
