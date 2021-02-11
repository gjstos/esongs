import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../music/music_module.dart';
import '../../../playlist/playlist_module.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
    with SingleTickerProviderStateMixin {
  final _outletController = RouterOutletListController();

  var _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-SONGS'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: CircleAvatar(
              child: Text('Dev'),
              backgroundColor: Colors.amber,
            ),
            onTap: () => Modular.to.pushNamed('/user'),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text('MÚSICAS'),
            ),
            Tab(
              child: Text('PLAYLISTS'),
            ),
          ],
          onTap: (index) {
            _outletController.changeModule(index);
          },
        ),
      ),
      body: RouterOutletList(
        modules: [
          MusicModule(),
          PlaylistModule(),
        ],
        controller: _outletController,
      ),
    );
  }
}
