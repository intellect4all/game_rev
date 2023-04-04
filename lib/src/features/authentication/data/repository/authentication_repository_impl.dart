import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:game_rev/src/core/error/failures/failure.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_manager.dart';

import '../../../../core/constants/app_texts.dart';
import '../../../../core/constants/enums.dart';
import '../../../../core/error/failures/exceptions.dart';
import '../../../../core/network/network.dart';
import '../../../../core/usecases/success_entity.dart';
import '../../../../core/utils/handle_failure_check.dart';
import '../../domain/entity/login_dto.dart';
import '../../domain/entity/user.dart';
import '../../domain/repository/authentication_repository.dart';
import '../data_source/auth_local_data_source.dart';
import '../data_source/authentication_data_source.dart';
import '../model/login_dto_model.dart';
import '../model/user_model.dart';

class AuthRepoImpl implements AuthenticationRepository, HandleFailureCheck {
  const AuthRepoImpl({
    required this.authenticationDatasource,
    required this.authenticationLocalDatasource,
    required this.networkInfo,
    required this.authenticationManager,
  });

  final AuthenticationDatasource authenticationDatasource;
  final AuthenticationLocalDataSource authenticationLocalDatasource;
  final NetworkInfo networkInfo;
  final AuthenticationManager authenticationManager;

  @override
  Future<Either<Failure, bool>> isUserOnboarded() async {
    try {
      final state = await authenticationLocalDatasource.isUserOnboarded();
      return Right(state);
    } on CustomException catch (e) {
      log(e.message);
      return Left(StorageFailure(e.message));
    } catch (e) {
      return const Left(StorageFailure(AppTexts.errorMessage));
    }
  }

  @override
  Future<Either<Failure, bool>> isUserLoggedIn() async {
    try {
      final isLoggedIn = authenticationManager.isUserLoggedIn();
      log("isUserLoggedIn: $isLoggedIn");
      return Right(isLoggedIn);
    } on CustomException catch (e) {
      log(e.message);
      return Left(StorageFailure(e.message));
    } catch (e) {
      return Left(
        AuthFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, Success>> setUserOnboarded() async {
    try {
      await authenticationLocalDatasource.setUserOnboarded();
      return Right(Success(message: "User Onboarded"));
    } on CustomException catch (e) {
      log(e.message);
      return Left(StorageFailure(e.message));
    } catch (e) {
      return const Left(StorageFailure(AppTexts.errorMessage));
    }
  }

  @override
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
  }) async {
    return await handleFailureCheck(() async {
      final res = await authenticationDatasource.signup(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        role: role,
        userName: userName,
        city: city,
        country: country,
        latitude: latitude,
        longitude: longitude,
        countryCode: countryCode,
      );

      if (res == null) {
        return Left(Success(message: "User created, login required"));
      }

      await authenticationLocalDatasource.saveUserDetails(res.userModel);
      await authenticationManager.logIn(res);


      return Right(res);
    });
  }

  @override
  Future<Either<Failure, Success>> verifyEmail({
    required String email,
    required String otp,
    required String otpId,
  }) async {
    return await handleFailureCheck<Success>(
          () async =>
      await authenticationDatasource.verifyEmail(
        email: email,
        otp: otp,
        otpId: otpId,
      ),
    );
  }

  @override
  Future<Either<Failure, LoginData>> login({
    required String email,
    required String password,
  }) async {
    return await handleFailureCheck<LoginData>(
          () async {
        final res = await authenticationDatasource.login(
          email: email,
          password: password,
        );

        await authenticationLocalDatasource.saveUserDetails(res.userModel);
        await authenticationManager.logIn(res);
        return res;
      },
    );
  }

  @override
  Future<Either<Failure, String>> initiateForgetPassword(String email) async {
    return await handleFailureCheck<String>(
          () async =>
      await authenticationDatasource.initiateForgetPassword(email: email),
    );
  }

  @override
  Future<Either<Failure, Success>> resetPassword({
    required String email,
    required String otp,
    required String otpId,
    required String password,
  }) async {
    return await handleFailureCheck<Success>(
          () async {
        await authenticationDatasource.resetPassword(
          email: email,
          otp: otp,
          otpId: otpId,
          password: password,
        );
        return Success(message: 'success');
      },
    );
  }

  @override
  Future<Either<Failure, Success>> signOut() async {
    return await handleFailureCheck<Success>(
          () async {
        await authenticationManager.logout();
        return await authenticationDatasource.signOut();
      },
    );
  }

  @override
  Future<Either<Failure, User>> getUserDetails() async {
    return await handleFailureCheck<User>(
          () async => await authenticationLocalDatasource.getUserDetails(),
    );
  }

  @override
  Future<Either<Failure, T>> handleFailureCheck<T>(
      Future<T> Function() request) async {
    try {
      // do internet check
      if (!await networkInfo.isConnected) {
        return const Left(AuthFailure(AppTexts.noInternet));
      }
      final res = await request();
      return Right(res);
    } on CustomException catch (e) {
      log(e.message);
      return Left(AuthFailure(e.message));
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      return const Left(
        AuthFailure(AppTexts.errorMessage),
      );
    }
  }

  @override
  Future<Either<Failure, String>> initiateAccountVerification(String email) {
    return handleFailureCheck<String>(
          () async =>
      await authenticationDatasource.initiateAccountVerification(email),
    );
  }

  @override
  Future<Either<Failure, String>> resendEmailOtp(
      {required String email, required ResendOTPType type}) {
    return handleFailureCheck<String>(
          () async =>
      await authenticationDatasource.resendEmailOtp(
          email: email, type: type),
    );
  }
}
