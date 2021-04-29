import 'package:dio/dio.dart';

import 'package:yellow_app/apis/index.dart';
import 'package:yellow_app/consts/api.dart';
import 'package:yellow_app/consts/general.dart';

class AuthApi {
  Future<Response> tokenGet(String email) async {
    Map<String, dynamic> user = {
      'email': email,
      'appId': GeneralConsts.appId,
    };
    Response response = await api.dio.post(
      ApiConsts.AUTH_TOKEN_URL,
      data: user,
    );
    return response;
  }
}

final AuthApi authApi = AuthApi();
