import 'package:flutter/material.dart';
import 'package:xlo/utils/custom_drawer/icon_tile.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconTile(
          label: 'Anúncios',
          icon: Icons.list,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Inserir Anúncios',
          icon: Icons.edit,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Chat',
          icon: Icons.chat,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Favoritos',
          icon: Icons.favorite,
          highlighted: false,
          onTap: () {},
        ),
        IconTile(
          label: 'Minha Conta',
          icon: Icons.person,
          highlighted: false,
          onTap: () {},
        ),
      ],
    );
  }
}
