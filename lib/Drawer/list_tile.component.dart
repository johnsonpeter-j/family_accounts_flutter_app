import 'package:flutter/material.dart';

class ListTileComponent extends StatefulWidget {
  final String labelText;
  final IconData icon;
  final VoidCallback onTabFunc;
  const ListTileComponent(
      {super.key,
      required this.labelText,
      required this.icon,
      required this.onTabFunc});

  @override
  State<ListTileComponent> createState() => _ListTileComponentState();
}

class _ListTileComponentState extends State<ListTileComponent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.icon,
        size: 15,
        color: Color(0XFFFFFFFF),
      ),
      title: Text(
        widget.labelText,
        style: TextStyle(
          fontSize: 12,
          color: Color(0XFFFFFFFF),
        ),
      ),
      onTap: widget.onTabFunc,
    );
  }
}
