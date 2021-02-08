import 'package:meta/meta.dart';

import '../../domain/entities/logged_user.dart';
import '../../domain/entities/logged_user_info.dart';

class UserModel extends LoggedUser implements LoggedUserInfo {
  UserModel({@required String name, String email})
      : super(name: name, email: email);

  LoggedUser toLoggedUser() => this;
}
