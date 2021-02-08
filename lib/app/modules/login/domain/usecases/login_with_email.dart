import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../entities/logged_user_info.dart';
import '../entities/login_credential.dart';
import '../errors/errors.dart';
import '../repositories/i_login_repository.dart';
import '../services/i_connectivity_service.dart';

part 'login_with_email.g.dart';

abstract class ILoginWithEmail {
  Future<Either<Failure, LoggedUserInfo>> call(LoginCredential credential);
}

@Injectable(singleton: false)
class LoginWithEmail implements ILoginWithEmail {
  final ILoginRepository repository;
  final IConnectivityService service;

  LoginWithEmail(this.repository, this.service);

  @override
  Future<Either<Failure, LoggedUserInfo>> call(
      LoginCredential credential) async {
    var result = await service.isOnline();

    if (result.isLeft()) {
      return result.map((r) => null);
    }

    if (!credential.isValidEmail) {
      return Left(ErrorLoginEmail(message: "Invalid Email"));
    } else if (!credential.isValidPassword) {
      return Left(ErrorLoginEmail(message: "Invalid Password"));
    }

    return await repository.loginEmail(
      email: credential.email,
      password: credential.password,
    );
  }
}
