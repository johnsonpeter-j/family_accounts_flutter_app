import 'package:family_account_flutter_app/components/common/button.component.dart';
import 'package:family_account_flutter_app/components/common/check_box.component.dart';
import 'package:family_account_flutter_app/components/common/form_field.component.dart';
import 'package:family_account_flutter_app/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool isSavePasswordChecked = false;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLoginButtonPress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0XFF014E9D),
            const Color(0XFF6CB1F7),
          ],
        )),
        child: SingleChildScrollView(
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
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFFFFFFF)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 30),
                    child: Column(children: [
                      FormFieldComponent(
                        title: 'Username',
                        placeholderText: 'Username',
                        errorText: '',
                        controller: usernameController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      FormFieldComponent(
                        title: 'Password',
                        placeholderText: 'Password',
                        errorText: '',
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                      ),
                      CheckBoxComponent(
                        isChecked: isSavePasswordChecked,
                        forText: 'Save Password',
                      ),
                      ButtonComponent(
                        labelText: 'Login',
                        onClicked: handleLoginButtonPress,
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
