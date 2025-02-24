import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final Color textColor;
  const DashboardCard(
      {super.key,
      required this.title,
      required this.value,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    // Get the height and width of the screen
    double screenHeight = MediaQuery.of(context).size.height;
    // Get the width of the device
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.45,
      height: screenHeight * 0.10,
      child: Card(
        elevation: 4, // Shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "\$ $value",
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
