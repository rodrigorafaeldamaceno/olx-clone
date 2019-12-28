import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xlo/blocs/drawer_bloc.dart';
import 'package:xlo/utils/custom_drawer/icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DrawerBloc _drawerBloc = Provider.of<DrawerBloc>(context);

    void _setPage(int page) {
      Navigator.of(context).pop();
      _drawerBloc.setPage(page);
    }

    return StreamBuilder<int>(
        stream: _drawerBloc.outPage,
        builder: (context, snapshot) {
          return Column(
            children: <Widget>[
              IconTile(
                label: 'Anúncios',
                icon: Icons.list,
                highlighted: snapshot.data == 0,
                onTap: () {
                  _setPage(0);
                },
              ),
              IconTile(
                label: 'Inserir Anúncios',
                icon: Icons.edit,
                highlighted: snapshot.data == 1,
                onTap: () {
                  _setPage(1);
                },
              ),
              IconTile(
                label: 'Chat',
                icon: Icons.chat,
                highlighted: false,
                onTap: () {
                  _setPage(2);
                },
              ),
              IconTile(
                label: 'Favoritos',
                icon: Icons.favorite,
                highlighted: snapshot.data == 2,
                onTap: () {
                  _setPage(3);
                },
              ),
              IconTile(
                label: 'Minha Conta',
                icon: Icons.person,
                highlighted: snapshot.data == 3,
                onTap: () {
                  _setPage(4);
                },
              ),
            ],
          );
        });
  }
}
