import 'package:flutter/material.dart';

import 'package:yellow_app/screens/splash.dart';
import 'package:yellow_app/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Yellow App',
      theme: themeUtil.getTheme(),
      home: SplashScreen(),
    );
  }
}
