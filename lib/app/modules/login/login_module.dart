import 'package:flutter_modular/flutter_modular.dart';

import 'ui/controllers/login_controller.dart';
import 'ui/pages/login/login_page.dart';
import 'ui/pages/options/options_page.dart';
import 'ui/pages/sign_in/sign_in_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/options', child: (_, args) => OptionsPage()),
        ModularRouter('/login', child: (_, args) => LoginPage()),
        ModularRouter('/sign-in', child: (_, args) => SignInPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
