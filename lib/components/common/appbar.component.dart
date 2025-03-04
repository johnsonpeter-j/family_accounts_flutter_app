import 'package:family_account_flutter_app/views/dashboard/dashboard.dart';
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
      title: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dashboard()),
          );
        },
        child: Text(
          'Dazzle Group of Company',
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      actions: [
        // IconButton(
        //   onPressed: () => {},
        // icon: Icon(
        //   Icons.account_circle,
        //   color: Color(0XFFFFFFFF),
        // ),
        // )
        PopupMenuButton<String>(
          icon: Icon(
            Icons.account_circle,
            color: Color(0XFFFFFFFF),
          ), // Icon for the popup menu
          onSelected: (String value) {
            // Handle the selected value
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Selected: $value')),
            );
          },
          itemBuilder: (BuildContext context) {
            return [
              // Custom heading
              PopupMenuItem<String>(
                enabled: false, // Disable selection
                child: Center(
                  child: Text(
                    'Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              // PopupMenuDivider(), // Divider
              reusablePopupMenuItem(
                  Icons.history, 'Update Profile', 'UPDATE_PROFILE'),
              reusablePopupMenuItem(Icons.lock_reset_outlined,
                  'Change Password', 'CHANGE_PASSWORD'),
              reusablePopupMenuItem(Icons.logout, 'Logout', 'LOGOUT'),
            ];
          },
        ),
      ],
    );
  }

  // Reusable PopupMenuItem widget
  PopupMenuItem<String> reusablePopupMenuItem(
      IconData icon, String label, String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 15,
          ), // Icon for the option
          SizedBox(width: 8), // Spacing between icon and text
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
