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
        leading: SizedBox(),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            tooltip: 'Filtrar',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.sort),
            tooltip: 'Ordenar',
            onPressed: () {},
          )
        ],
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
