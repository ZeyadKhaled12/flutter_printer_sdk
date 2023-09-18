import 'dart:convert';

import 'package:flutter_printer_sdk/features/app_side/data/datasource/app_side_local_source.dart';

import '../../../../core/error/error_message_model.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/utils/app_constance.dart';
import '../../domain/usecases/login_uc.dart';
import '../models/login_model.dart';
import 'package:http/http.dart' as http;

abstract class BaseAppSideRemoteDataSource {
  Future<LoginModel> login(LoginParameters parameters);
}

class AppSideRemoteDataSource extends BaseAppSideRemoteDataSource {
  @override
  Future<LoginModel> login(LoginParameters parameters) async {
    final response = await http.post(Uri.parse(AppConstance.loginUrl),
        headers: {
          'Content-Type': 'application/json',
          'Charset': 'utf-8',
          'Accept': 'application/json',
        },
        body: jsonEncode(
            LoginModel.convertEntityToModel(parameters.login).toJson()));
    if (response.statusCode == 200) {
      LoginModel loginModel = LoginModel.fromJson(jsonDecode(response.body));
      AppSideLocalSource().cacheData(loginModel.data!.url);
      return loginModel;
    } else {
      throw ServerException(
          ErrorMessageModel.fromJson(jsonDecode(response.body)));
    }
  }
}
