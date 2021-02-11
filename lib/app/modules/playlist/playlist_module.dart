import 'package:flutter_modular/flutter_modular.dart';

import 'ui/pages/form_controller.dart';
import 'ui/pages/form_page.dart';
import 'ui/pages/playlist_controller.dart';
import 'ui/pages/playlist_page.dart';

class PlaylistModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlaylistController,
        $PlaylistFormController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PlaylistPage()),
        ModularRouter(
          '/playlist-form',
          child: (_, args) => PlaylistFormPage(playlist: args.data),
        )
      ];

  static Inject get to => Inject<PlaylistModule>.of();
}
