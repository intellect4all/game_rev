

import 'dart:developer';

import '../../domain/entity/login_dto.dart';
import '../../domain/entity/user.dart';
import 'user_model.dart';

class LoginDtoModel extends LoginData {

  final UserModel userModel;

  LoginDtoModel({
    required super.jwtToken,
    required this.userModel,
  }) : super(
    user: userModel, );


  factory LoginDtoModel.fromJson(Map<String, dynamic> json) {
    final user = json['userDetails'] as Map<String, dynamic>;
    user["id"] = json['userId'];
    log("user: $user");
    return LoginDtoModel(
      jwtToken: json['jwt'] as String,
      userModel: UserModel.fromJson(user),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jwt': jwtToken,
      'userDetails': userModel.toJson(),
      'userId': userModel.id,
    };
  }
}
