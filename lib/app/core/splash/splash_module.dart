import 'package:flutter_modular/flutter_modular.dart';

import 'ui/controllers/splash_controller.dart';
import 'ui/pages/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SplashController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
