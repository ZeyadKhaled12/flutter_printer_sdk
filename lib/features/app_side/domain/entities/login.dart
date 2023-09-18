import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String? emailOrPhone;
  final String? password;
  final String? deviceToken;
  final String message;
  final Data? data;

  const Login(
      {this.emailOrPhone,
      this.password,
      this.deviceToken,
      required this.message,
      this.data});

  @override
  List<Object?> get props =>
      [emailOrPhone, password, deviceToken, message, data];
}

class Data extends Equatable {
  final String url;

  const Data({required this.url});

  @override
  List<Object?> get props => [url];
}
