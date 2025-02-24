import 'package:family_account_flutter_app/Drawer/drawer.component.dart';
import 'package:family_account_flutter_app/components/common/appbar.component.dart';
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

    final List<Map<String, String>> items = [
      {"key": "Today's Income", "value": "5432.10"},
      {"key": "Today's Expenditure", "value": "3210.40"},
      {"key": "Total Income", "value": "5432.10"},
      {"key": "Total Expenditure", "value": "3210.40"},
    ];

    return Scaffold(
      appBar: CustomAppBar(),
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
                SizedBox(
                  height:
                      screenHeight * 0.5, // Set a fixed height for the GridView
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      crossAxisSpacing: 10, // Horizontal spacing between items
                      mainAxisSpacing: 10, // Vertical spacing between items
                      childAspectRatio: 1.8, // Aspect ratio of each item
                    ),
                    padding: EdgeInsets.all(10), // Padding around the grid
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return DashboardCard(
                        title: items[index]['key']!,
                        value: items[index]['value']!,
                        textColor: (index % 2 == 0) ? Colors.red : Colors.green,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
