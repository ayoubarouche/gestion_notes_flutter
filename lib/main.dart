import 'package:flutter/material.dart';
import 'package:gestion_notes/routes.dart';

void main() {
  runApp(new MaterialApp(
    theme: new ThemeData(primaryColor: Color.fromRGBO(139, 97, 228, 1)),
    routes: routes,
    debugShowCheckedModeBanner: false,
  ));
}
