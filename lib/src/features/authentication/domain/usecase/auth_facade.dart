import 'package:dartz/dartz.dart';
import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_data_source.dart';
import 'package:game_rev/src/features/authentication/domain/entity/user.dart';

import '../../../../core/constants/enums.dart';
import '../../../../core/usecases/success_entity.dart';
import '../entity/login_dto.dart';
import '../repository/authentication_repository.dart';

part 'params.dart';

class AuthFacade {
  const AuthFacade({
    required AuthenticationRepository repository,
  }) : _repository = repository;

  final AuthenticationRepository _repository;

  Future<Either<Failure, Either<Success, LoginData>>> signUp(
      SignUpUserParams params) async {
    return await _repository.signup(
      email: params.email,
      password: params.password,
      firstName: params.firstName,
      lastName: params.lastName,
      phone: params.phone,
      role: params.role,
      userName: params.userName,
      city: params.city,
      country: params.country,
      latitude: params.latitude,
      longitude: params.longitude,
      countryCode: params.countryCode,
    );
  }

  Future<Either<Failure, LoginData>> login(LoginUserParams params) {
    return _repository.login(
      email: params.email,
      password: params.password,
    );
  }

  Future<Either<Failure, bool>> isUserLoggedIn() async {
    return await _repository.isUserLoggedIn();
  }

  Future<Either<Failure, bool>> isUserOnboarded() async {
    return await _repository.isUserOnboarded();
  }

  Future<Either<Failure, Success>> setUserOnboarded() async {
    return await _repository.setUserOnboarded();
  }

  Future<Either<Failure, String>> initiateForgetPassword(String email) async {
    return await _repository.initiateForgetPassword(email);
  }

  Future<Either<Failure, Success>> resetPassword(
      ResetPasswordParams params) async {
    return await _repository.resetPassword(
      email: params.email,
      otp: params.otp,
      otpId: params.otpId,
      password: params.password,
    );
  }

  Future<Either<Failure, String>> initiateAccountVerification(
      String params) async {
    return await _repository.initiateAccountVerification(params);
  }

  Future<Either<Failure, Success>> verifyEmail(VerifyEmailParams params) async {
    return await _repository.verifyEmail(
      email: params.email,
      otp: params.otp,
      otpId: params.otpId,
    );
  }

  Future<Either<Failure, String>> sendEmailOtp(ResendOtpParams params) async {
    return await _repository.resendEmailOtp(
      email: params.email,
      type: params.type,
    );
  }

  Future<Either<Failure, User>> getUser() async {
    return await _repository.getUserDetails();
  }

  Future<Either<Failure, Success>> signOut() {
    return _repository.signOut();
  }

  getReviewLocations() {}
}
