import 'package:game_rev/src/features/dashboard/domain/entity/review.dart';

import '../../../../core/constants/enums.dart';

class User {
  final String firstName;
  final String lastName;
  final String phone;
  final String username;
  final String email;
  final bool isVerified;
  final String displayPicture;
  final UserRole role;
  final String id;
  final Location location;

  const User({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.username,
    required this.email,
    required this.isVerified,
    required this.displayPicture,
    required this.role,
    required this.id,
    required this.location,
  });

  factory User.defaultUser() {
    return const User(
      firstName: '',
      lastName: '',
      phone: '',
      username: '',
      email: '',
      isVerified: false,
      displayPicture: '',
      role: UserRole.user,
      id: '',
      location: Location(
        city: '',
        country: '',
        countryCode: '',
        latitude: 0,
        longitude: 0,
      ),
    );
  }

  bool get isAdmin => role == UserRole.admin;

  bool get isModerator => role == UserRole.moderator;

  bool get isUser => role == UserRole.user;

  String get fullName => '$firstName $lastName';
}
