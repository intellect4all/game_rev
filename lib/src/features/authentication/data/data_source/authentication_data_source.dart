import 'dart:developer';

import '../../../../core/constants/enums.dart';
import '../../../../core/error/failures/exceptions.dart';
import '../../../../core/network/api_caller.dart';
import '../../../../core/network/endpoints.dart';
import '../../../../core/usecases/success_entity.dart';
import '../model/login_dto_model.dart';

enum ResendOTPType { verifyEmail, resetPassword }

abstract class AuthenticationDatasource {
  Future<LoginDtoModel?> signup({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
    required UserRole role,
    required String userName,
    required String city,
    required String country,
    required double latitude,
    required double longitude,
    required String countryCode,
  });

  Future<SuccessModel> verifyEmail(
      {required String email, required String otp, required String otpId});

  Future<String> resendEmailOtp(
      {required String email, required ResendOTPType type});

  Future<LoginDtoModel> login(
      {required String email, required String password});

  Future<String> initiateForgetPassword({required String email});

  Future<SuccessModel> resetPassword({
    required String email,
    required String otp,
    required String otpId,
    required String password,
  });

  Future<SuccessModel> signOut();

  Future<String> initiateAccountVerification(String email);
}

class AuthenticationDataSourceImpl implements AuthenticationDatasource {
  const AuthenticationDataSourceImpl({
    required ApiCaller apiCaller,
  }) : _apiCaller = apiCaller;

  final ApiCaller _apiCaller;

  @override
  Future<LoginDtoModel?> signup({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
    required UserRole role,
    required String userName,
    required String city,
    required String country,
    required double latitude,
    required double longitude,
    required String countryCode,
  }) async {
    final res = await _apiCaller.post(
      url: AppEndpoints.signUp,
      body: {
        "email": email,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "role": _getRoleString(role),
        "username": userName,
        "location": {
          "city": city,
          "country": country,
          "latitude": latitude,
          "longitude": longitude,
          "countryCode": countryCode,
        }
      },
    );

    if (res.isSuccessful()) {
      if (res.statusCode == 207) {
        return null;
      }

      final data = res.data as Map<String, dynamic>;
      return LoginDtoModel.fromJson(data);
    }

    throw CustomException(res.message);
  }

  @override
  Future<SuccessModel> verifyEmail({
    required String email,
    required String otp,
    required String otpId,
  }) async {
    final res = await _apiCaller.post(
      url: AppEndpoints.verifyEmail,
      body: {
        "email": email,
        "otpCode": otp,
        "tokenId": otpId,
      },
    );

    if (res.isSuccessful()) {
      return SuccessModel(message: 'Email verified successfully');
    }
    throw CustomException(res.message);
  }

  @override
  Future<String> resendEmailOtp(
      {required String email, required ResendOTPType type}) async {
    final url = type == ResendOTPType.verifyEmail
        ? AppEndpoints.resendEmailOtp
        : AppEndpoints.resendResetPasswordOtp;
    final res = await _apiCaller.post(
      url: "$url/email",
      body: {},
    );

    if (res.isSuccessful()) {
      return res.data['otpId'] as String;
    }
    throw CustomException(res.message);
  }

  @override
  Future<LoginDtoModel> login({
    required String email,
    required String password,
  }) async {
    final res = await _apiCaller.post(
      url: AppEndpoints.login,
      body: {
        "email": email,
        "password": password,
      },
    );

    if (res.isSuccessful()) {
      final data = res.data as Map<String, dynamic>;
      return LoginDtoModel.fromJson(data);
    }
    log(res.data.toString());

    throw CustomException(res.message);
  }

  @override
  Future<String> initiateForgetPassword({required String email}) async {
    final res = await _apiCaller.post(
      url: '${AppEndpoints.initiateForgetPassword}/$email',
      body: {},
    );
    if (res.isSuccessful()) {
      return res.data['otpId'] as String;
    }
    throw CustomException(res.message);
  }

  @override
  Future<SuccessModel> resetPassword({
    required String email,
    required String otp,
    required String otpId,
    required String password,
  }) async {
    final res = await _apiCaller.post(
      url: AppEndpoints.resetPassword,
      body: {
        "email": email,
        "otpCode": otp,
        "tokenId": otpId,
        "password": password,
        "confirmPassword": password,
      },
    );
    if (res.isSuccessful()) {
      return SuccessModel(message: 'Password reset successfully');
    }
    throw CustomException(res.message);
  }

  @override
  Future<SuccessModel> signOut() async {
    //TODO implement this, use a singleton to logout the user
    return SuccessModel(message: 'Signed out successfully');
  }

  @override
  Future<String> initiateAccountVerification(String email) async {
    final res = await _apiCaller.post(
      url: '${AppEndpoints.initiateAccountVerification}/$email',
      body: {},
    );
    if (res.isSuccessful()) {
      return res.data['otpId'] as String;
    }
    throw CustomException(res.message);
  }

  String _getRoleString(UserRole role) {
    if (role == UserRole.admin) {
      return 'admin';
    } else if (role == UserRole.moderator) {
      return 'moderator';
    } else {
      return 'user';
    }
  }
}
