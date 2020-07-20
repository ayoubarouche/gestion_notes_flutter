import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromRGBO(139, 97, 228, 1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final ErreurMessageStyle = TextStyle(
  fontSize: 40,
  color: Color.fromRGBO(139, 97, 228, 1),
  fontFamily: 'OpenSans',
);

  final choiceButtonStyle = TextStyle(color: Colors.white, fontSize: 20.0);