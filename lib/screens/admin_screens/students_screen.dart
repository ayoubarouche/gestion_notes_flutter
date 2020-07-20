import 'package:flutter/material.dart';
import 'package:gestion_notes/containers.dart';
import 'package:gestion_notes/widgets.dart';

class AllStudentsAdminScreen extends StatefulWidget {
  @override
  _AllClassesScreenState createState() => _AllClassesScreenState();
}

class _AllClassesScreenState extends State<AllStudentsAdminScreen> {
  ScrollController controller;
  String text = "swipe up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StudentContainer(
        minHeight: 60.0,
        panel: SwipeUp(children: [
          swipeUpTitle(context, 'hello world'),
          Expanded(
                      child: FlatButton(
              onPressed: () {},
              child: Text(
                'hello world',
              ),
            ),
          ),
        ]),
        title: 'تلاميذ القسم',
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            TraitementPartie(
              spaceBetweenTwoButton: 20.0,
              leftChild: ChoseItemButton(
                  title: 'اضافة تلميذ',
                  color: Colors.green,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              rightChild: ChoseItemButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  title: 'حذف التلاميذ',
                  color: Colors.redAccent[200],
                  onPressed: () {}),
            ),
            PartieOfScreen(
              startFrom: 12,
              title: 'التلاميذ',
            ),
            Expanded(
              flex: 5,
              child: StudentList(),
            ),
          ],
        ),
      ),
     
    );
  }
}
