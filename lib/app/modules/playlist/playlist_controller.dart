import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'playlist_controller.g.dart';

@Injectable()
class PlaylistController = _PlaylistControllerBase with _$PlaylistController;

abstract class _PlaylistControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
