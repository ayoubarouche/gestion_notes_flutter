import 'package:flutter/material.dart';
import 'package:gestion_notes/routes.dart';

void main() {
  runApp(new MaterialApp(
    theme: new ThemeData(
      primaryColor: Color.fromRGBO(139, 97, 228, 1),
      primaryColorLight: Color.fromRGBO(91, 58, 161, 1),
    ),
    routes: routes,
    debugShowCheckedModeBanner: false,
    title: "gestion des notes",
  ));
}
