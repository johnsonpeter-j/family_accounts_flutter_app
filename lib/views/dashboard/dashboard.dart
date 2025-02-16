import 'package:family_account_flutter_app/Drawer/drawer.component.dart';
import 'package:family_account_flutter_app/components/dashboard/dashboard_card.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // Get the height and width of the screen
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
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
      ),
      drawer: DrawerComponent(),
      body: Container(
        width: double.infinity, // 100% width
        height: double.infinity, // 100% height
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0XFF014E9D),
              const Color(0XFF6CB1F7),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              left: screenWidth * 0.025,
              right: screenWidth * 0.025,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://picsum.photos/250?image=9"),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DashboardCard(
                      title: "Today's Income",
                      value: "2131.00",
                    ),
                    DashboardCard(
                      title: "Today's Expenditure",
                      value: "3121.00",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DashboardCard(
                      title: "Total Income",
                      value: "2131.00",
                    ),
                    DashboardCard(
                      title: "Total Expenditure",
                      value: "3121.00",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
