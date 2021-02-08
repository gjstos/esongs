import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/errors/errors.dart';
import '../../infra/datasources/login_datasource.dart';
import '../../infra/models/user_model.dart';

part 'firebase_datasource.g.dart';

@Injectable(singleton: false)
class FirebaseDataSourceImpl implements LoginDataSource {
  final auth;

  FirebaseDataSourceImpl(this.auth);

  @override
  Future<UserModel> loginEmail({String email, String password}) async {
    var result =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    var user = result.user;
    return UserModel(
      name: user.displayName,
      email: user.email,
    );
  }

  @override
  Future<UserModel> currentUser() async {
    var user = (await auth.currentUser());

    if (user == null) throw ErrorGetLoggedUser();

    return UserModel(
      name: user.displayName,
      email: user.email,
    );
  }

  @override
  Future<void> logout() async {
    return await auth.signOut();
  }
}
