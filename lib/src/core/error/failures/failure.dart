import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);
  @override
  List<Object> get props => [message];
}

class StorageFailure extends Failure {
  const StorageFailure(super.message);
}

class AuthFailure extends Failure {
  const AuthFailure(super.message);
}

class ProfileDataFailure extends Failure {
  const ProfileDataFailure(super.message);
}

class NoInternetFailure extends Failure {
  const NoInternetFailure(super.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class NoActiveSubscriptionFailure extends Failure {
  const NoActiveSubscriptionFailure(super.message);
}


class UnableToFetchDataFailure extends Failure {
  const UnableToFetchDataFailure(super.message);
}