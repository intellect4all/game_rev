import 'package:dartz/dartz.dart';

import '../../../../core/constants/enums.dart';
import '../../../../core/error/failures/failure.dart';
import '../../../../core/usecases/success_entity.dart';
import '../../data/data_source/authentication_data_source.dart';
import '../entity/account_creation_dto.dart';
import '../entity/login_dto.dart';
import '../entity/user.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Either<Success, LoginData>>> signup({
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

  Future<Either<Failure, bool>> isUserLoggedIn();

  Future<Either<Failure, Success>> setUserOnboarded();

  Future<Either<Failure, bool>> isUserOnboarded();

  Future<Either<Failure, String>> initiateAccountVerification(String email);

  Future<Either<Failure, Success>> verifyEmail({
    required String email,
    required String otp,
    required String otpId,
  });

  Future<Either<Failure, String>> resendEmailOtp({
    required String email,
    required ResendOTPType type,
  });

  Future<Either<Failure, LoginData>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, String>> initiateForgetPassword(String email);

  Future<Either<Failure, Success>> resetPassword(
      {required String email,
      required String otp,
      required String otpId,
      required String password});

  Future<Either<Failure, Success>> signOut();

  Future<Either<Failure, User>> getUserDetails();
}
