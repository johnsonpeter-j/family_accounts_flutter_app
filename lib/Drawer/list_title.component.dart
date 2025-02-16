import 'package:flutter/material.dart';

class ListTitleTextComponent extends StatelessWidget {
  final String title;
  const ListTitleTextComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          color: Color(0XFFFFFFFF),
        ),
      ),
    );
  }
}
