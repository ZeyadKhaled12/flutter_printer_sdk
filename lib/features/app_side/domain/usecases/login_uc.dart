import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_printer_sdk/features/app_side/domain/entities/login.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_use_case.dart';
import '../repository/base_app_side_repo.dart';

class LoginUc extends BaseUseCase<Login, LoginParameters> {
  final BaseAppSideRepo baseAppSideRepo;

  LoginUc(this.baseAppSideRepo);

  @override
  Future<Either<Failure, Login>> call(LoginParameters parameters) async {
    return await baseAppSideRepo.login(parameters);
  }
}

class LoginParameters extends Equatable {
  final Login login;

  const LoginParameters({required this.login});

  @override
  List<Object> get props => [login];
}
