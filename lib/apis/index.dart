import 'package:dio/dio.dart';

import 'package:yellow_app/apis/auth.dart';
import 'package:yellow_app/apis/user.dart';

class Api {
  Dio dio = Dio(BaseOptions());
  UserApi user = userApi;
  AuthApi auth = authApi;
}

final Api api = Api();
