import 'package:dio/dio.dart';

import 'package:yellow_app/apis/auth.dart';
import 'package:yellow_app/apis/user.dart';
import 'package:yellow_app/models/user.dart';
import 'package:yellow_app/utils/storage.dart';

class Api {
  Dio dio = Dio(BaseOptions());
  UserApi user = userApi;
  AuthApi auth = authApi;

  Future<void> setHeaders() async {
    User user = await storageUtil.getUser();
    dio.options.headers["auth"] = user.token;
  }
}

final Api api = Api();
