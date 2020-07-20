import 'package:flutter/material.dart';
import 'package:gestion_notes/containers.dart';
import 'package:gestion_notes/widgets.dart';

class AllClassesAdminScreen extends StatefulWidget {
  @override
  _AllClassesScreenState createState() => _AllClassesScreenState();
}

class _AllClassesScreenState extends State<AllClassesAdminScreen> {
  ScrollController controller;
  String text = "swipe up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClassesContainer(
        title: 'كل الاقسام',
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
                  title: 'اضافة قسم',
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
                  title: 'حذف الاقسام',
                  color: Colors.redAccent[200],
                  onPressed: () {}),
            ),
            PartieOfScreen(
              startFrom: 12,
              title: 'الأقسام',
            ),
            Expanded(
              flex: 5,
              child: ClassesList(),
            ),
          ],
        ),
      ),
    );
  }
}
