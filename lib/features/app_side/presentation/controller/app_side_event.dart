part of 'app_side_bloc.dart';

abstract class AppSideEvent extends Equatable {
  const AppSideEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AppSideEvent {
  final LoginParameters loginParameters;

  const LoginEvent({required this.loginParameters});

  @override
  List<Object> get props => [loginParameters];
}

class CheckIfLoginBeforeEvent extends AppSideEvent {
  final NoParameters noParameters;

  const CheckIfLoginBeforeEvent({required this.noParameters});

  @override
  List<Object> get props => [noParameters];
}
