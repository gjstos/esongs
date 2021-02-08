import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../errors/errors.dart';
import '../repositories/i_login_repository.dart';

part 'logout.g.dart';

abstract class ILogout {
  Future<Either<Failure, Unit>> call();
}

@Injectable(singleton: false)
class Logout implements ILogout {
  final ILoginRepository repository;

  Logout(this.repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await repository.logout();
  }
}
