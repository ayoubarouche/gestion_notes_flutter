import 'package:flutter/material.dart';

//image de l'arriere plan il faut l'uiliser avec un stack pour bien positioné les widget
Widget BackgroundImage() {
  return Image.asset(
    'assets/backgroun_image.jpg',
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );
}

// le message principal
Widget HelloMessage(BuildContext context, String text) {
  return Container(
    width: MediaQuery.of(context).size.width / 2 + 100,
    child: Text(
      text,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 50,
          decoration: TextDecoration.none),
    ),
  );
}

Widget LoginRegisterMessage(BuildContext context, String text,double width) {
  return Container(
    width: width,
    child: Text(
      text,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 40,
          decoration: TextDecoration.none),
    ),
  );
}
//button pour la creation d'un compte dans le quelle le color d'arriere plan et du color primaire
Widget CreateAccountButton(BuildContext context, String text) {
  return FlatButton(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30.0),
      ));
}

//button pour le login il est pas de color au milieu
Widget LoginButton(BuildContext context, String text) {
  return OutlineButton(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      highlightColor: Theme.of(context).primaryColor,
      highlightedBorderColor: Colors.white,
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ));
}

Widget InputBackgroundImage() {
  return Image.asset(
    'assets/login_register_image.jpg',
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );
}
