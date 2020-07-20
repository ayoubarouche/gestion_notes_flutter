import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  ScrollController controller;
  StudentList({this.controller});
  @override
  _ClassesListState createState() =>
      _ClassesListState(controller: this.controller ?? new ScrollController());
}

class _ClassesListState extends State<StudentList> {
  ScrollController controller;
  _ClassesListState({@required this.controller});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return StudentWidget();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: 5);
  }
}

class StudentWidget extends StatelessWidget {
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
          Icons.account_circle,
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
