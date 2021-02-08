import 'package:dartz/dartz.dart';

import '../errors/errors.dart';

abstract class IConnectivityService {
  Future<Either<Failure, Unit>> isOnline();
}
