import 'dart:convert';
import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/constants/local_storage_keys.dart';
import '../../../../core/error/failures/exceptions.dart';
import '../model/login_dto_model.dart';

class AuthenticationManager {
  final Box _hiveBox;

  LoginDtoModel? _userData;

  // make this is a singleton class
  AuthenticationManager._internal(this._hiveBox, {LoginDtoModel? userData})
      : _userData = userData;

  static AuthenticationManager? _instance;

  final _authState = BehaviorSubject<LoginDtoModel?>();

  Stream<LoginDtoModel?> get authStateStream => _authState.stream;

  LoginDtoModel? get userData => _userData;

  static const fiveDaysInMilliSeconds = 5 * 24 * 60 * 60 * 1000;

  static Future<AuthenticationManager> init(Box box) async {
    _instance = AuthenticationManager._internal(box);

    final userRaw = await _instance!._hiveBox.get(LocalStorage.userDetailsKey);

    if (userRaw != null) {
      final timeSaved =
          await _instance!._hiveBox.get(LocalStorage.timeUserDetailsSavedKey);
      final timeNow = DateTime.now().millisecondsSinceEpoch;

      // if the user details are older than 5 day, delete them
      if (timeNow - timeSaved > fiveDaysInMilliSeconds) {
        await _instance!._hiveBox.delete(LocalStorage.userDetailsKey);
        await _instance!._hiveBox.delete(LocalStorage.timeUserDetailsSavedKey);
      } else {
        final userJson = jsonDecode(userRaw);
        _instance!._userData = LoginDtoModel.fromJson(userJson);
        _instance!._authState.add(_instance!._userData);
      }
    }

    return _instance!;
  }

  static AuthenticationManager getInstance() {
    if (_instance == null) {
      throw Exception("AuthenticationManager is not initialized");
    }
    return _instance!;
  }

  Future<void> logIn(LoginDtoModel user) async {
    if (_hiveBox.isOpen) {
      final jj = jsonEncode(user.toJson());
      await _hiveBox.put(LocalStorage.userDetailsKey, jj);
      await _hiveBox.put(LocalStorage.timeUserDetailsSavedKey,
          DateTime.now().millisecondsSinceEpoch);

      _userData = user;
      _authState.add(_userData);
    } else {
      throw const CustomException("Unable to save");
    }
  }

  Future<void> logout() async {
    await _hiveBox.delete(LocalStorage.userDetailsKey);
    await _hiveBox.delete(LocalStorage.timeUserDetailsSavedKey);
    _userData = null;
    _authState.add(_userData);
  }

  bool isUserLoggedIn() {
    return _userData != null;
  }

  String? getJwtToken() {
    final jwt = _userData?.jwtToken;
    return jwt;
  }
}
