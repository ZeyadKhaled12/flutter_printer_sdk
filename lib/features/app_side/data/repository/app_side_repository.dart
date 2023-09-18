import 'package:either_dart/src/either.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_use_case.dart';
import '../../domain/entities/login.dart';
import '../../domain/repository/base_app_side_repo.dart';
import '../../domain/usecases/login_uc.dart';
import '../datasource/app_side_local_source.dart';
import '../datasource/app_side_remote_source.dart';

class AppSideRepo extends BaseAppSideRepo {
  BaseAppSideRemoteDataSource baseAppSideRemoteDataSource;
  BaseAppSideLocalSource baseAppSideLocalSource;
  AppSideRepo(this.baseAppSideRemoteDataSource, this.baseAppSideLocalSource);

  @override
  Future<Either<Failure, Login>> login(LoginParameters parameters) async {
    try {
      final result = await baseAppSideRemoteDataSource.login(parameters);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<bool> checkIfLogin(NoParameters parameters) async {
    return await baseAppSideLocalSource.checkIfLogin(const NoParameters());
  }
}
