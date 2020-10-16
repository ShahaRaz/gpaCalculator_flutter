import 'package:flutter/material.dart';
import 'package:gpa_israel/constant_views.dart';

class Widget_Course extends StatelessWidget {
  final String name;
  final int grade;
  final double points;
  final Function longPressFun;

  Widget_Course({this.name, this.grade, this.points, this.longPressFun});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        //TODO: add here alert dialog , & ask if edit or delete (from level above maybe, in widget_semester)
        longPressFun();
      },
      title: Text(
        name,
        style: kTXTSTYLE_BLACK20_BOLD, // todo - later export
      ),
      trailing: Text(
        '$grade  / $points', // todo -  later set it to a row with the points on the side.
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
