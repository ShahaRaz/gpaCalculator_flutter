import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'package:gpa_israel/logic/academic_year_Class.dart';
import 'package:flutter/foundation.dart';
import 'academic_course.dart';

class LogicManager extends ChangeNotifier {
  AcademicDegree localDegree;

  LogicManager() {
    print('entered manager');
    localDegree = new AcademicDegree(2019, 4, this);
    print('finished init__________________');
    testStruct();
    print(localDegree.getSemester(1, 1).getNumberOfCoursesInSemester());
    print(localDegree.getSemester(1, 1).getCoursesList()[0].getName());
    print(localDegree.getSemester(1, 1).getCoursesList()[1].getName());
    print(localDegree.getSemester(1, 1).getCoursesList()[2].getName());
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
    print('arrived to addCourse');
    final Course addMe = Course(grade, points, name);
    localDegree.addNewCourse_toDegree(
        addMe, yearTaken_1to7, semesterTaken_1to3);
    print('b4 notifyListeners__ ');
    notifyListeners();
    print('after notifyListeners__');
  }

  Semester getSemester(
      {@required int yearTaken_1to7, @required int semesterTaken_1to3}) {
    return localDegree.getSemester(yearTaken_1to7, semesterTaken_1to3);
  }

  int getCourseCountSemester(
      {@required yearTaken_1to7, @required semesterTaken_1to3}) {
    return localDegree
        .getSemester(yearTaken_1to7, semesterTaken_1to3)
        .getNumberOfCoursesInSemester();
  }

  AcademicYear getAcademicYear({@required int year_1to7}) {
    return localDegree.getAcademicYear(year_1to7: year_1to7);
  }

  void testStruct() {
    semster1 = [];
    semster1.add(new Course(80, 5, "Linear Algebra"));
    semster1.add(new Course(76, 5, "Calculus 1"));
    semster1.add(new Course(90, 5, "intro to JAVA"));
    semster1.add(new Course(80, 5, "Physics 1"));
    for (Course c in semster1) {
      localDegree.addNewCourse_toDegree(c, 1, 1);
      print('inserted course to 1_______________ ');
    }
    semster2 = [];
    semster2.add(new Course(100, 3, "Object Oriented Programming"));
    semster2.add(new Course(90, 3, "Physics 2"));
    semster2.add(new Course(80, 5, "Calculus 2"));
    for (Course c in semster2) {
      localDegree.addNewCourse_toDegree(c, 1, 2);
      print('inserted course to 2_______________ ');
    }
    semster3 = [];
    semster3.add(new Course(100, 3, "Design Object Oriented "));
    semster3.add(new Course(93, 3, "Database Management"));
    semster3.add(new Course(86, 5, "Discrete Math"));
    for (Course c in semster3) {
      localDegree.addNewCourse_toDegree(c, 2, 1);
      print('inserted course to 3_______________');
    }
  }

  void deleteCourseNUpdate(Course deleteMe) {
    print('course deleted : ${deleteMe.getName()}');
    String newGPA = localDegree.getSemester(1, 1).getSemesterAverage();
    print('newGPA: $newGPA');
    notifyListeners();
  }

  void courseDeletedUpdateUI() {
    notifyListeners();
  }

  AcademicDegree getDegree() {
    return localDegree;
  }
}
