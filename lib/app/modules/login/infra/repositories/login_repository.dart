import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/entities/logged_user_info.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/i_login_repository.dart';
import '../datasources/login_datasource.dart';

part 'login_repository.g.dart';

@Injectable(singleton: false)
class LoginRepository implements ILoginRepository {
  final LoginDataSource dataSource;

  LoginRepository(this.dataSource);

  Future<Either<Failure, LoggedUserInfo>> loginEmail(
      {String email, String password}) async {
    try {
      var user = await dataSource.loginEmail(email: email, password: password);
      return Right(user);
    } on Exception {
      return Left(ErrorLoginEmail(message: "Error login with Email"));
    }
  }

  @override
  Future<Either<Failure, LoggedUserInfo>> loggedUser() async {
    try {
      var user = await dataSource.currentUser();
      return Right(user);
    } on Exception {
      return Left(ErrorGetLoggedUser(
          message: "Error ao tentar recuperar usuario atual logado"));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await dataSource.logout();
      return Right(unit);
    } on Exception {
      return Left(ErrorLogout(message: "Error ao tentar fazer logout"));
    }
  }
}
