import 'dart:async';

import '../models/user_model.dart';

abstract class LoginDataSource {
  Future<UserModel> loginEmail({String email, String password});

  Future<UserModel> currentUser();

  Future<void> logout();
}
