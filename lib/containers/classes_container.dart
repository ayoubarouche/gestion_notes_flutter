import 'package:flutter/material.dart';
import 'package:gestion_notes/widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ClassesContainer extends StatelessWidget {
  Widget child;
  String title;
  ClassesContainer({
    @required this.title,
    @required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[ScreenTitle(title: this.title)];
      },
      body: this.child,
    );
  }
}

class StudentContainer extends StatelessWidget {
  Widget child;
  String title;
  double minHeight;
  Widget panel;
  Function onPanelOpened;
  Function onPanelClosed;
  StudentContainer({
    @required this.title,
    @required this.child,
    @required this.panel,
    @required this.minHeight,
    this.onPanelOpened,
    this.onPanelClosed,
  });
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      minHeight: this.minHeight,
      onPanelClosed: this.onPanelClosed ?? (){},
      onPanelOpened: this.onPanelOpened ?? (){},
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      maxHeight: MediaQuery.of(context).size.height / 3,
      panel: this.panel,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[ScreenTitle(title: this.title)];
        },
        body: this.child,
      ),
    );
  }
}
