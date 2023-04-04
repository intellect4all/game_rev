class AccountCreatedDto {
  final String email;
  final String fullName;
  final String id;
  final String token;

  AccountCreatedDto({
    required this.email,
    required this.fullName,
    required this.id,
    required this.token,
  });

  @override
  String toString() {
    return 'AccountCreatedDto(email: $email, fullName: $fullName, id: $id, token: $token)';
  }

  AccountCreatedDto copyWith({
    String? email,
    String? fullName,
    String? id,
    String? token,
  }) {
    return AccountCreatedDto(
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      id: id ?? this.id,
      token: token ?? this.token,
    );
  }
}
