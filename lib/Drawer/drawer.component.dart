import 'package:family_account_flutter_app/Drawer/list_tile.component.dart';
import 'package:family_account_flutter_app/Drawer/list_title.component.dart';
import 'package:family_account_flutter_app/views/add_entry/AddEntry.dart';
import 'package:family_account_flutter_app/views/search/search.dart';
import 'package:family_account_flutter_app/views/transactions/transaction.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({super.key});

  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0XFF1D1B20),
      child: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14,
              color: Color(0XFFFFFFFF),
            ),
          ),
          ListTitleTextComponent(title: 'Income/Expenditures'),
          ListTileComponent(
              labelText: 'Data Entry',
              icon: Icons.add,
              onTabFunc: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddEntry()),
                );
              }),
          ListTileComponent(
            labelText: 'View Transactions',
            icon: Icons.account_balance_wallet_outlined,
            onTabFunc: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Transaction()),
              );
            },
          ),
          ListTileComponent(
            labelText: 'Search',
            icon: Icons.search,
            onTabFunc: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
            },
          ),
          ListTileComponent(
            labelText: 'Report',
            icon: Icons.report_gmailerrorred_sharp,
            onTabFunc: () {},
          ),
          Divider(
            height: 2,
          ),
          ListTitleTextComponent(title: 'Data Visualization'),
          ListTileComponent(
            labelText: 'Stock Graph',
            icon: Icons.arrow_right_outlined,
            onTabFunc: () {},
          ),
          ListTileComponent(
            labelText: 'Bar Graph',
            icon: Icons.star_border,
            onTabFunc: () {},
          ),
          ListTileComponent(
            labelText: 'Candle Stick Graph',
            icon: Icons.stars_sharp,
            onTabFunc: () {},
          ),
          Divider(
            height: 2,
          ),
          ListTitleTextComponent(title: 'Profile'),
          ListTileComponent(
            labelText: 'Update Profile',
            icon: Icons.history,
            onTabFunc: () {},
          ),
          ListTileComponent(
            labelText: 'Change Password',
            icon: Icons.lock_reset_outlined,
            onTabFunc: () {},
          ),
          ListTileComponent(
            labelText: 'Logout',
            icon: Icons.logout,
            onTabFunc: () {},
          ),
        ],
      ),
    );
  }
}
