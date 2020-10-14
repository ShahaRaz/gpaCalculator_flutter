import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'package:gpa_israel/logic/academic_year_Class.dart';

import 'academic_course.dart';

class LogicManager {
  AcademicDegree _localDegree;

  LogicManager() {
    print('entered manager');
    _localDegree = new AcademicDegree(2019, 4);
    print('finished init__________________');
    testStruct();
    print(_localDegree.getSemester(1, 1).getNumberOfCoursesInSemester());
    print(_localDegree.getSemester(1, 1).getCoursesList()[0].getName());
    print(_localDegree.getSemester(1, 1).getCoursesList()[1].getName());
    print(_localDegree.getSemester(1, 1).getCoursesList()[2].getName());
  }

  List<Course> semster1;
  List<Course> semster2;
  List<Course> semster3;
  List<AcademicYear> years;

  //LogicManager().getSemester

  // UnmodifiableListView<Course> get year1SemA{
  //
  //   return UnmodifiableListView(_testim);
  //
  // }

  void addCourse(String name, int grade, double points, yearTaken_1to7,
      semesterTaken_1to3) {
    final Course addMe = Course(grade, points, name);
    _localDegree.addNewCourse_toDegree(
        addMe, yearTaken_1to7, semesterTaken_1to3);
  }

  Semester getSemestersList(
      {@required int yearTaken_1to7, @required int semesterTaken_1to3}) {
    return _localDegree.getSemester(yearTaken_1to7,
        semesterTaken_1to3); // todo ater bubble down to the semester to fetch its courses.
  }

  int getCourseCount({@required yearTaken_1to7, @required semesterTaken_1to3}) {
    return 7;
    // todo later bubble down to the semester to fetch its courses.
  }

  void testStruct() {
    semster1 = [];
    semster1.add(new Course(80, 5, "Linear Algebra"));
    semster1.add(new Course(76, 5, "Calculus 1"));
    semster1.add(new Course(90, 5, "intro to programming JAVA"));
    semster1.add(new Course(80, 5, "Physics 1"));
    for (Course c in semster1) {
      _localDegree.addNewCourse_toDegree(c, 1, 1);
      print('inserted course to 1 ');
    }
    semster2 = [];
    semster2.add(new Course(100, 3, "Object Oriented Programming"));
    semster2.add(new Course(90, 3, "Physics 2"));
    semster2.add(new Course(80, 5, "Calculus 2"));
    for (Course c in semster2) {
      _localDegree.addNewCourse_toDegree(c, 2, 2);
      print('inserted course to 2 ');
    }
    semster3 = [];
    semster3.add(new Course(100, 3, "Design Object Oriented "));
    semster3.add(new Course(93, 3, "Database Management"));
    semster3.add(new Course(86, 5, "Discrete Math"));
    for (Course c in semster3) {
      _localDegree.addNewCourse_toDegree(c, 2, 1);
      print('inserted course to 3 ');
    }
  }
}
