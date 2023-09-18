import '../../domain/entities/login.dart';

class LoginModel extends Login {
  const LoginModel(
      {super.emailOrPhone,
      super.password,
      super.data,
      super.deviceToken,
      required super.message});

  factory LoginModel.fromJson(Map<String, dynamic> json, {String? token}) =>
      LoginModel(
          message: json['message'],
          deviceToken: json['deviceToken'],
          data: DataModel.fromJson(json['data']));

  Map<String, dynamic> toJson() => {
        "emailOrPhone": emailOrPhone,
        "password": password,
        //"deviceToken": deviceToken
      };

  static LoginModel convertEntityToModel(Login login) => LoginModel(
        message: login.message,
        data: login.data,
        deviceToken: login.deviceToken,
        emailOrPhone: login.emailOrPhone,
        password: login.password,
      );
}

class DataModel extends Data {
  const DataModel({required super.url});

  factory DataModel.fromJson(Map<String, dynamic> json, {String? token}) =>
      DataModel(url: json['url']);
}
