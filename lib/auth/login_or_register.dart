import 'package:flutter/material.dart';
import 'package:yugomas/pages/login_page.dart';
import 'package:yugomas/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially, show login page
  bool showLoginPAge = true;

  //toggle between login and register
  void togglePages() {
    setState(() {
      showLoginPAge = !showLoginPAge;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPAge) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
