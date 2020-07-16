import 'package:flutter/material.dart';
import 'package:gestion_notes/containers.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

String username;
String password;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LoginContainer(context,
        helloMessage: "تسجيل الدخول",
        hightToStart: MediaQuery.of(context).size.height / 2 + 50,
        children: [
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter a search term'),
          )
        ]).build();
  }
}
