part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationLoading extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AccountCreatedSuccessfully extends AuthenticationState {
  final User user;
  const AccountCreatedSuccessfully( {required this.user});

  @override
  List<Object> get props => [user];
}

class AuthenticationError extends AuthenticationState {
  const AuthenticationError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

class EmailVerificationSuccess extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class OtpResendSuccess extends AuthenticationState {
  final String id;

  const OtpResendSuccess({required this.id});
  @override
  List<Object> get props => [id];
}

class LoginSuccess extends AuthenticationState {
  final User user;
  const LoginSuccess(
    {required this.user}
      );

  @override
  List<Object?> get props => [user];
}

class UserSignedIntoFirebase extends AuthenticationState {
  const UserSignedIntoFirebase();
  @override
  List<Object> get props => [];
}

class ForgetPasswordInitiated extends AuthenticationState {
  final String id;
  final String email;

  const ForgetPasswordInitiated({
    required this.id,
    required this.email,
  });
  @override
  List<Object> get props => [];
}

class PasswordResetSuccess extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class UserSignedOut extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class UserSignedUpButRequiredLogin extends AuthenticationState {
  @override
  List<Object> get props => [];
}