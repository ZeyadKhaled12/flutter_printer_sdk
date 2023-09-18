import 'package:either_dart/either.dart';
import 'package:flutter_printer_sdk/core/usecase/base_use_case.dart';

import '../../../../core/error/failure.dart';
import '../entities/login.dart';
import '../usecases/login_uc.dart';

abstract class BaseAppSideRepo {
  Future<Either<Failure, Login>> login(LoginParameters parameters);
  Future<bool> checkIfLogin(NoParameters parameters);
}
