import 'package:flutter/material.dart';
import 'package:gestion_notes/containers.dart';
import 'package:gestion_notes/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterAndLoginContainer(context,
        helloMessage: 'مرحبا بك في نقطي',
        hightToStart: MediaQuery.of(context).size.height / 2 + 50,
        espaceBetweenWidgets: 10,
        children: [
          CreateAccountButton(context, 'انشاء حساب', () {
            if (Navigator.canPop(context)) Navigator.pop(context);
            Navigator.pushNamed(context, '/register');
          }),
          LoginButton(context, "تسجيل الدخول", () {
             if (Navigator.canPop(context)) Navigator.pop(context);
            Navigator.pushNamed(context, '/login');
          })
        ]).build();
  }
}
