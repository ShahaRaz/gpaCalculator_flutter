import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'widget_course.dart';

class Widget_SemesterCoursesList extends StatelessWidget {
  final Semester semester;
  Widget_SemesterCoursesList(this.semester);

  @override
  Widget build(BuildContext context) {
    List<Course> courses = semester.getCoursesList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return Widget_Course(courses[index].getName(),
            courses[index].getGrade(), courses[index].getPoints());
      },
      itemCount: courses.length,
    );
  }
}
