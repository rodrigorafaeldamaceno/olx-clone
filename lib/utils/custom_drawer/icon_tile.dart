import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool highlighted;

  IconTile({this.label, this.icon, this.highlighted, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
          color: highlighted ? Colors.blue : Colors.black,
        ),
      ),
      leading: Icon(
        icon,
        color: highlighted ? Colors.blue : Colors.black,
      ),
      onTap: onTap,
      contentPadding: EdgeInsets.fromLTRB(20, 0, 10, 0),
    );
  }
}
