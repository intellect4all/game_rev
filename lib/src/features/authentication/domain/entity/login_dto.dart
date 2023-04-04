import 'package:game_rev/src/features/authentication/domain/entity/user.dart';

class LoginData {
  final String jwtToken;
  final User user;

  LoginData({
    required this.jwtToken,
    required this.user,
  });
}
