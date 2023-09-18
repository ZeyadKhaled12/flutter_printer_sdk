part of 'app_side_bloc.dart';

class AppSideState extends Equatable {
  final Login login;
  final bool isLoginBefore;
  final RequestState appSideRequestState;
  final String errorAppSideMessage;

  const AppSideState(
      {this.login = const Login(message: ''),
      this.isLoginBefore = false,
      this.appSideRequestState = RequestState.loaded,
      this.errorAppSideMessage = ''});

  AppSideState copyWith(
      {Login? login,
      bool? isLoginBefore,
      RequestState? appSideRequestState,
      String? errorAppSideMessage}) {
    return AppSideState(
      login: login ?? this.login,
      isLoginBefore: isLoginBefore ?? this.isLoginBefore,
      appSideRequestState: appSideRequestState ?? this.appSideRequestState,
      errorAppSideMessage: errorAppSideMessage ?? this.errorAppSideMessage,
    );
  }

  @override
  List<Object> get props =>
      [login, isLoginBefore, appSideRequestState, errorAppSideMessage];
}
