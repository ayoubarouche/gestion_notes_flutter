import 'package:flutter/material.dart';
import 'package:gestion_notes/screens.dart';
import 'package:gestion_notes/screens/admin_screens/classes_screen.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = new PageController();
    int index  = 0;
    return Scaffold(
      body: PageView(
        children: [
          AllClassesAdminScreen(),
          AllStudentsAdminScreen()
        ],
        controller: controller,
        onPageChanged: (new_index){
            setState(() {
              index = new_index;
            });
        },
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: index,
        onTap: (new_index){
          
          setState(() {
            index = new_index;
          });
          controller.jumpToPage(new_index);
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('classes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('students'),
          )
        ],
      ),
    );
  }
}
