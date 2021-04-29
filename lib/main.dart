import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

import 'package:yellow_app/screens/splash.dart';
import 'package:yellow_app/utils/theme.dart';

void main() async {
  await DotEnv.load(fileName: '.env');
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
