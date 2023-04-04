import 'package:dartz/dartz.dart';

import '../error/failures/failure.dart';
import 'network.dart';

class DoInternetCheck {
  Future<Either<Failure, T>> checkInternetThenMakeRequest<T>(
    NetworkInfo networkInfo, {
    required Future<T> Function() request,
  }) async {
    if (await networkInfo.isConnected) {
      final res = await request();
      return Right(res);
    } else {
      return const Left(
          NoInternetFailure("No Internet, Please check your connection"));
    }
  }
}
