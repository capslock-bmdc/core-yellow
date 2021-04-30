import 'package:dio/dio.dart';

import 'package:yellow_app/apis/index.dart';
import 'package:yellow_app/consts/api.dart';

class UserApi {
  Future<Response> create() async {
    Map<String, dynamic> user = {};
    Response response = await api.dio.post(
      ApiConsts.USERS_URL,
      data: user,
    );
    return response;
  }

  Future<Response> get(String userId, String token) async {
    Response response = await api.dio.get(
      '${ApiConsts.USERS_URL}/$userId',
    );
    return response;
  }
}

final UserApi userApi = UserApi();
