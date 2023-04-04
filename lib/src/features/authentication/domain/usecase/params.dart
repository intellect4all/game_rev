part of 'auth_facade.dart';

class LoginUserParams {
  final String email;
  final String password;

  LoginUserParams({
    required this.email,
    required this.password,
  });
}

class SignUpUserParams {
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

  const SignUpUserParams({
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
}

class ResetPasswordParams {
  final String otp;
  final String otpId;
  final String email;
  final String password;

  const ResetPasswordParams({
    required this.otp,
    required this.otpId,
    required this.email,
    required this.password,
  });
}


class VerifyEmailParams {
  final String email;
  final String otp;
  final String otpId;

  VerifyEmailParams({
    required this.email,
    required this.otp,
    required this.otpId,
  });
}


class ResendOtpParams {
  final String email;
  final ResendOTPType type;

  const ResendOtpParams({
    required this.email,
    required this.type,
  });
}
