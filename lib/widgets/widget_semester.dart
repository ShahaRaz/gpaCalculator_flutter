import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'widget_course.dart';

class Widget_SemesterCoursesList extends StatefulWidget {
  Semester semesterStateful;

  Widget_SemesterCoursesList(this.semesterStateful);

  @override
  _Widget_SemesterCoursesListState createState() =>
      _Widget_SemesterCoursesListState();
}

class _Widget_SemesterCoursesListState
    extends State<Widget_SemesterCoursesList> {
  _Widget_SemesterCoursesListState();

  @override
  Widget build(BuildContext context) {
    List<Course> courses = widget.semesterStateful.getCoursesList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return Widget_Course(courses[index].getName(),
            courses[index].getGrade(), courses[index].getPoints());
      },
      itemCount: courses.length,
    );
  }
}
