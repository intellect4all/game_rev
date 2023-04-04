import 'package:dartz/dartz.dart';

import '../error/failures/failure.dart';

abstract class HandleFailureCheck {
  Future<Either<Failure, T>> handleFailureCheck<T>(
    Future<T> Function() request,
  );
}
