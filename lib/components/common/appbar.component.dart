import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // automaticallyImplyLeading: false, // Remove the back button
      iconTheme: IconThemeData(
        color: Color(0XFFFFFFFF),
      ), // Change the color of the drawer icon
      backgroundColor: Color(0XFF000000),
      title: Text(
        'Dazzle Group of Company',
        style: TextStyle(
          color: Color(0XFFFFFFFF),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.account_circle,
            color: Color(0XFFFFFFFF),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
