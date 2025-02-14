import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                "Family Accounts",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFFFFFF)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFFFFFF)),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("haii"),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
