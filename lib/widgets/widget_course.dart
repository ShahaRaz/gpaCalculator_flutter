import 'package:flutter/material.dart';

class Widget_Semester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is a course grade',
        style: TextStyle(fontSize: 20), // todo - later export
      ),
      trailing: Text(
          '86'), // todo -  later set it to a row with the points on the side.
    );
  }
}
