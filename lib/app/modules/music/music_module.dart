import 'package:flutter_modular/flutter_modular.dart';

import 'ui/music_controller.dart';
import 'ui/pages/music_form_page.dart';
import 'ui/pages/music_page.dart';

class MusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MusicController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => MusicPage(),
          transition: TransitionType.rightToLeftWithFade,
        ),
        ModularRouter('/music-form', child: (_, args) => MusicFormPage())
      ];

  static Inject get to => Inject<MusicModule>.of();
}
