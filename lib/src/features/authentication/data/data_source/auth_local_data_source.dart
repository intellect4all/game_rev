import 'dart:convert';
import 'dart:developer';

import 'package:game_rev/src/features/authentication/data/model/user_model.dart';
import 'package:hive/hive.dart';

import '../../../../core/constants/local_storage_keys.dart';
import '../../../../core/error/failures/exceptions.dart';
import '../../domain/entity/user.dart';


abstract class AuthenticationLocalDataSource {
  Future<bool> isUserOnboarded();
  Future<void> setUserOnboarded();

  Future<void> saveUserDetails(UserModel user);

  Future<UserModel> getUserDetails();

}

class HiveLocalDataSourceImpl implements AuthenticationLocalDataSource {
  const HiveLocalDataSourceImpl({
    required this.hiveBox,
  });
  final Box hiveBox;

  @override
  Future<void> setUserOnboarded() async {
    if (hiveBox.isOpen) {
      log('Box is open and onboarding state is being saved');
      await hiveBox.put(LocalStorage.onboardingKey, true);
    } else {
      throw const CustomException("Unable to save");
    }
  }

  @override
  Future<bool> isUserOnboarded() async {
    return await hiveBox.get(LocalStorage.onboardingKey, defaultValue: false) ??
        false;
  }

  @override
  Future<void> saveUserDetails(UserModel user) async {
    if (hiveBox.isOpen) {
      log('Box is open and user details are being saved');
      await hiveBox.put(LocalStorage.userDetailsKey, jsonEncode(user.toJson()));
    } else {
      throw const CustomException("Unable to save");
    }
  }

  @override
  Future<UserModel> getUserDetails() async {
    try {
      final user = await hiveBox.get(LocalStorage.userDetailsKey);
      if (user != null) {
        return UserModel.fromJson(jsonDecode(user));
      } else {
        throw const CustomException("Unable to get user details");
      }
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      throw const CustomException("Unable to get user details");
    }
  }
}
