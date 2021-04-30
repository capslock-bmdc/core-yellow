import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GeneralConsts {
  // defaults
  static const String DEFAULT_THEME = 'default';
  static const List<Locale> LOCALES = [Locale('en', 'US')];
  static const Locale DEFAULT_LOCALE = Locale('en', 'US');

  // env
  static final String appId = env['APP_ID'] ?? '';

  // storage
  static const String STORAGE_USER = 'storage_user';
}
