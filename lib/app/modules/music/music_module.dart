import 'package:flutter_modular/flutter_modular.dart';

import 'ui/music_controller.dart';

class MusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MusicController,
      ];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<MusicModule>.of();
}
