import 'package:flutter_modular/flutter_modular.dart';

import 'ui/controllers/login_controller.dart';
import 'ui/pages/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
