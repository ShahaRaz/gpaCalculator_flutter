import 'package:flutter/material.dart';

class Widget_Course extends StatelessWidget {
  final String name;
  final int grade;
  final double points;

  Widget_Course(this.name, this.grade, this.points);

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
