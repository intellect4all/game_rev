import 'package:game_rev/src/core/constants/enums.dart';
import 'package:game_rev/src/features/dashboard/data/models/review_model.dart';

import '../../domain/entity/user.dart';

class UserModel extends User {
  const UserModel({
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.phone,
    required super.username,
    required super.isVerified,
    required super.displayPicture,
    required super.role,
    required super.id,
    required super.location,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        email: json['email'] ?? '',
        firstName: json['firstName'] ?? '',
        lastName: json['lastName'] ?? '',
        phone: json['phone'] ?? '',
        username: json['username'] ?? '',
        isVerified: json['isVerified'] ?? false,
        displayPicture: json['displayPicture'] ?? '',
        role: _roleFromString(json['role']),
        id: json['id'] ?? '',
        location: LocationModel.fromJson(json['location']));
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'username': username,
      'isVerified': isVerified,
      'role': _roleToString(role),
      'displayPicture': displayPicture,
      'location': {
        'city': location.city,
        'country': location.country,
        'countryCode': location.countryCode,
        'latitude': location.latitude,
        'longitude': location.longitude,
      },
    };
  }

  static UserRole _roleFromString(String role) {
    switch (role) {
      case 'moderator':
        return UserRole.moderator;
      case 'admin':
        return UserRole.admin;
      default:
        return UserRole.user;
    }
  }

  _roleToString(UserRole role) {
    switch (role) {
      case UserRole.moderator:
        return 'moderator';
      case UserRole.admin:
        return 'admin';
      default:
        return 'user';
    }
  }
}
