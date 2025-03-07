import 'package:family_account_flutter_app/views/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

        // Set the background color for the PopupMenu
        popupMenuTheme: PopupMenuThemeData(
            color: Color(0XFF1D1B20), // Change this to your desired color
            iconColor: Colors.white),
      ),
      home: const MyHomePage(),
    );
  }
}
