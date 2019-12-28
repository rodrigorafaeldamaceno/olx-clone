import 'package:flutter/material.dart';
import 'package:xlo/utils/custom_drawer/custom_header.dart';
import 'package:xlo/utils/custom_drawer/icon_section.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomHeader(),
          IconSection(),
          Divider(color: Colors.grey)
        ],
      ),
    );
  }
}
