import 'package:flutter/material.dart';
import 'package:gestion_notes/widgets.dart';

//register and login container
class RegisterAndLoginContainer {
  //tous les widget que on va ajouter par exemple les buttons de login ou register
  List<Widget> children = [];
  String helloMessage;
  BuildContext context;
  double espaceBetweenWidgets = 20.0;
  double hightToStart;
  RegisterAndLoginContainer(this.context,
      {@required this.helloMessage,
      this.espaceBetweenWidgets = 20,
      @required this.hightToStart,
      List<Widget> children}) {
    //initialisation
    //adding the background image

    this.children.add(BackgroundImage());
    //preparing the hello message widget

    Widget helloMessageWidget = Positioned(
        right: 0, top: 190, child: HelloMessage(context, helloMessage));
    this.children.add(helloMessageWidget);
    //preparing the widget to add
    List<Widget> columnWidget = [];
    columnWidget.add(
      SizedBox(height: hightToStart),
    );
    for (Widget child in children) {
      columnWidget.add(child);
      columnWidget.add(
        SizedBox(height: espaceBetweenWidgets),
      );
    }
    Widget widgetToAdd = Center(
      child: Column(children: columnWidget),
    );
    this.children.add(widgetToAdd);
  }

  Widget build() {
    return new Stack(children: children);
  }
}

//le login container


