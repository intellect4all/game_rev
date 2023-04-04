class ForgetPasswordPageArgs {
  final String email;
  final String password;
  final String otpId;
  final String otp;

  ForgetPasswordPageArgs({
    required this.email,
    required this.password,
    required this.otpId,
    required this.otp,
  });

  ForgetPasswordPageArgs copyWith({
    String? email,
    String? password,
    String? otpId,
    String? otp,
  }) {
    return ForgetPasswordPageArgs(
      email: email ?? this.email,
      password: password ?? this.password,
      otpId: otpId ?? this.otpId,
      otp: otp ?? this.otp,
    );
  }
}
