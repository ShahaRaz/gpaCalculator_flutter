import 'package:flutter/material.dart';
import 'widget_course.dart';

class Widget_SemesterCoursesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Widget_Semester(),
        Widget_Semester(),
        Widget_Semester(),
      ],
    );
  }
}
