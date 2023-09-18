import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_printer_sdk/core/usecase/base_use_case.dart';
import 'package:flutter_printer_sdk/features/app_side/domain/usecases/check_if_login_uc.dart';

import '../../../../core/utils/enums.dart';
import '../../domain/entities/login.dart';
import '../../domain/usecases/login_uc.dart';

part 'app_side_event.dart';
part 'app_side_state.dart';

class AppSideBloc extends Bloc<AppSideEvent, AppSideState> {
  final LoginUc loginUc;
  final CheckIfLoginUc checkIfLoginUc;

  AppSideBloc(this.loginUc, this.checkIfLoginUc) : super(const AppSideState()) {
    on<LoginEvent>(_login);
    on<CheckIfLoginBeforeEvent>(_checkIfLogin);
  }

  FutureOr<void> _login(LoginEvent event, Emitter<AppSideState> emit) async {
    emit(state.copyWith(appSideRequestState: RequestState.loading));
    final result = await loginUc.call(event.loginParameters);
    result.fold(
        (l) => emit(state.copyWith(
            appSideRequestState: RequestState.error,
            errorAppSideMessage: l.message)),
        (r) => emit(state.copyWith(
            login: r, appSideRequestState: RequestState.loaded)));
  }

  FutureOr<void> _checkIfLogin(
      CheckIfLoginBeforeEvent event, Emitter<AppSideState> emit) async {
    emit(state.copyWith(appSideRequestState: RequestState.loading));
    final result = await checkIfLoginUc.change(event.noParameters);
    emit(state.copyWith(
        appSideRequestState: RequestState.loaded, isLoginBefore: result));
  }
}
