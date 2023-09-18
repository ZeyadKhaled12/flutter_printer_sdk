import 'package:flutter_printer_sdk/features/app_side/data/datasource/app_side_local_source.dart';
import 'package:flutter_printer_sdk/features/app_side/data/datasource/app_side_remote_source.dart';
import 'package:flutter_printer_sdk/features/app_side/data/repository/app_side_repository.dart';
import 'package:flutter_printer_sdk/features/app_side/domain/repository/base_app_side_repo.dart';
import 'package:flutter_printer_sdk/features/app_side/domain/usecases/check_if_login_uc.dart';
import 'package:get_it/get_it.dart';

import '../../features/app_side/domain/usecases/login_uc.dart';
import '../../features/app_side/presentation/controller/app_side_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //Bloc
    sl.registerFactory(() => AppSideBloc(sl(), sl()));

    //Use Case
    sl.registerLazySingleton(() => LoginUc(sl()));
    sl.registerLazySingleton(() => CheckIfLoginUc(sl()));

    //Repo
    sl.registerLazySingleton<BaseAppSideRepo>(() => AppSideRepo(sl(), sl()));

    //Data Source
    sl.registerLazySingleton<BaseAppSideRemoteDataSource>(
        () => AppSideRemoteDataSource());
    sl.registerLazySingleton<BaseAppSideLocalSource>(
        () => AppSideLocalSource());
  }
}
