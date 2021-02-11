import 'package:flutter_modular/flutter_modular.dart';

import 'user_controller.dart';
import 'user_page.dart';

class UserModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $UserController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => UserPage()),
      ];

  static Inject get to => Inject<UserModule>.of();
}
