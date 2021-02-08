import 'package:dartz/dartz.dart';
import '../entities/logged_user_info.dart';
import '../errors/errors.dart';

abstract class ILoginRepository {
  Future<Either<Failure, LoggedUserInfo>> loginEmail(
      {String email, String password});

  Future<Either<Failure, LoggedUserInfo>> loggedUser();

  Future<Either<Failure, Unit>> logout();
}
