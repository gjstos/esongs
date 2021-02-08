import 'package:flutter_modular/flutter_modular.dart';

import 'playlist_controller.dart';
import 'playlist_page.dart';

class PlaylistModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlaylistController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PlaylistPage()),
      ];

  static Inject get to => Inject<PlaylistModule>.of();
}
