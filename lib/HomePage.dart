import 'package:flutter/material.dart';
import 'package:gestion_notes/containers.dart';
import 'package:gestion_notes/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterAndLoginContainer(context,
        helloMessage: 'مرحبا بكم في نقطتي',
        hightToStart: MediaQuery.of(context).size.height / 2 + 50,
        espaceBetweenWidgets: 10,
        children: [
          CreateAccountButton(context, 'انشاء حساب'),
          LoginButton(context, "تسجيل الدخول")
        ]).build();
  }
}
