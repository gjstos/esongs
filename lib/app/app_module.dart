import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/app_controller.dart';
import 'pages/app_widget.dart';
import 'core/splash/splash_module.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          module: SplashModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
