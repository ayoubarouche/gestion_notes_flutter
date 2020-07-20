import 'package:flutter/material.dart';
import 'package:gestion_notes/widgets.dart';

//widget that i use it for floating action bar for adding something fot exemple for admin for add a classr
//room and students for prof to add notes
Widget Ajouter(BuildContext context, Text title, Function onPressed) {
  return RaisedButton.icon(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      splashColor: Colors.white,
      onPressed: onPressed,
      icon: Icon(
        Icons.add_circle_outline,
        color: Colors.white,
      ),
      label: title);
}

//for choosing items i use it as a statful for atributes chossing
class ChoseItemButton extends StatelessWidget {
  //what to do to after click on class
  Function onPressed = () {};
  //icon before title
  Icon icon;

  //the title to show in the button
  String title;
  //color used in the button
  Color color;

  ChoseItemButton({
    @required this.title,
    @required this.color,
    @required this.onPressed,
    @required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      color: this.color,
      icon: this.icon,
      onPressed: this.onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      label: Text(
        title,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: choiceButtonStyle,
      ),
    );
  }
}

//it contains two buttons for traitement like adding class or delete all classes
class TraitementPartie extends StatelessWidget {
  Widget leftChild;
  Widget rightChild;
  double spaceBetweenTwoButton = 13.0;
  TraitementPartie({
    @required this.leftChild,
    this.rightChild,
    this.spaceBetweenTwoButton = 13.0,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: this.spaceBetweenTwoButton,
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.3,
            height: MediaQuery.of(context).size.width / 6,
            child: this.leftChild,
          ),
        ),
        SizedBox(
          width: this.spaceBetweenTwoButton,
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.3,
            height: MediaQuery.of(context).size.width / 6,
            child: this.rightChild,
          ),
        ),
        SizedBox(
          width: this.spaceBetweenTwoButton,
        ),
      ],
    );
  }
}

//partie of screen it's like a diveseur that contains the title
class PartieOfScreen extends StatelessWidget {
  String title;
  double startFrom;
  PartieOfScreen({
    @required this.title,
    this.startFrom = 20.0,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: 20.0,
              top: startFrom,
            ),
            child: Text(
              this.title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 3.0,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: startFrom,
        ),
      ],
    );
  }
}

class ClassesList extends StatefulWidget {
  ScrollController controller;
  ClassesList({this.controller});
  @override
  _ClassesListState createState() =>
      _ClassesListState(controller: this.controller ?? new ScrollController());
}

class _ClassesListState extends State<ClassesList> {
  ScrollController controller;
  _ClassesListState({@required this.controller});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ClassWidget();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: 5);
  }
}

class ClassWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: FlatButton.icon(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        onPressed: () {},
        icon: Icon(
          Icons.delete,
          color: Colors.white,
        ),
        label: Text(
          'حذف',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        color: Colors.redAccent[200],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Icon(
          Icons.class_,
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
      ),
      title: Text(
        'francais',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      dense: false,
      contentPadding: EdgeInsets.all(5),
      onTap: () {},
      subtitle: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: Text(
          'hello world',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}

class ScreenTitle extends StatelessWidget {
  String title;
  ScreenTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.width / 3 + 80,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: SafeArea(
          child: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              )),
        ),
      ),
    );
  }
}
 //swipe up effect for showing other configuration
class SwipeUp extends StatelessWidget {
  String title;
  List<Widget> children;
  SwipeUp({this.title,@required this.children});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.children
    );
  }
}
//swipe up title for panel 
Widget swipeUpTitle(BuildContext context,String title){
return Container(
             decoration: new BoxDecoration(
                 color: Theme.of(context).primaryColor,
                  borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(20.0),
                    topRight: const  Radius.circular(20.0))
                ),
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        );
}
