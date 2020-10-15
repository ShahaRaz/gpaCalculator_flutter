import 'package:flutter/material.dart';

class Widget_Course extends StatelessWidget {
  final String name;
  final int grade;
  final double points;
  final Function longPressFun;

  Widget_Course({this.name, this.grade, this.points, this.longPressFun});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressFun,
      title: Text(
        name,
        style: TextStyle(fontSize: 20), // todo - later export
      ),
      trailing: Text(
        '$grade  / $points', // todo -  later set it to a row with the points on the side.
      ),
    );
  }
}
