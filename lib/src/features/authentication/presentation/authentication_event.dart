part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class SignupEvent extends AuthenticationEvent {
  const SignupEvent({
    required this.email,
    required this.password,
    required this.lastName,
    required this.firstName,
    required this.phone,
    required this.role,
    required this.userName,
    required this.city,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
  });

  final String email;
  final String password;
  final String lastName;
  final String firstName;
  final String phone;
  final UserRole role;
  final String userName;
  final String city;
  final String country;
  final double latitude;
  final double longitude;
  final String countryCode;

  @override
  List<Object?> get props => [
        email,
        password,
        lastName,
        firstName,
        phone,
        role,
        userName,
        city,
        country,
      ];
}

class VerifyEmailEvent extends AuthenticationEvent {
  const VerifyEmailEvent(
      {required this.otp, required this.id, required this.email});

  final String otp;
  final String id;
  final String email;

  @override
  List<Object?> get props => [otp, id, email];
}

class ResendOtpEvent extends AuthenticationEvent {
  const ResendOtpEvent({
    required this.email,
    required this.type,
  });

  final String email;
  final ResendOTPType type;

  @override
  List<Object?> get props => [email];
}

class SignUserIntoFirebaseEvent extends AuthenticationEvent {
  const SignUserIntoFirebaseEvent({required this.token});

  final String token;

  @override
  List<Object?> get props => [token];
}

class LoginUserEvent extends AuthenticationEvent {
  const LoginUserEvent({required this.email, required this.password});

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}

class InitiateForgetPasswordEvent extends AuthenticationEvent {
  const InitiateForgetPasswordEvent({required this.email});

  final String email;

  @override
  List<Object?> get props => [email];
}

class ResetPasswordOtpEvent extends AuthenticationEvent {
  const ResetPasswordOtpEvent({
    required this.otp,
    required this.id,
    required this.email,
    required this.password,
  });

  final String otp;
  final String id;
  final String email;
  final String password;

  @override
  List<Object?> get props => [otp, id, email, password];
}

class SignOutEvent extends AuthenticationEvent {
  const SignOutEvent();

  @override
  List<Object?> get props => [];
}
