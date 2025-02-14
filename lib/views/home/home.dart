import 'package:family_account_flutter_app/views/login/loginpage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0XFF014E9D), const Color(0XFF6CB1F7)],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0XFFFFFCFC),
              radius: 70,
              child: Icon(
                Icons.home,
                color: Color(0XFF014E9D),
                size: 54.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ), //Text
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 150),
              child: Text(
                "Family Accounts",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFFFFFF)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFFFFCFC),
                      foregroundColor: Color(0XFF014E9D)),
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFFFFCFC),
                      foregroundColor: Color(0XFF014E9D)),
                  child: const Text('Sign Up'),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
