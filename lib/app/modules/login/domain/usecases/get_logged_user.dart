import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../entities/logged_user_info.dart';
import '../errors/errors.dart';
import '../repositories/i_login_repository.dart';

part 'get_logged_user.g.dart';

abstract class IGetLoggedUser {
  Future<Either<Failure, LoggedUserInfo>> call();
}

@Injectable(singleton: false)
class GetLoggedUser implements IGetLoggedUser {
  final ILoginRepository repository;

  GetLoggedUser(this.repository);

  @override
  Future<Either<Failure, LoggedUserInfo>> call() async {
    return await repository.loggedUser();
  }
}
