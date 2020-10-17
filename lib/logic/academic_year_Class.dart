import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'constants_logic.dart';
import 'academic_degree.dart';
import 'academic_semester.dart';

class AcademicYear {
  List<Semester> _semesters; // 1,2,3= summer
  int _academicYear; // if starting in oct2020 -> the year counts as 2021
  double _yearlyAverage = 0;
  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg = 0;

  int _numOfCoursesInYear = 0;
  double _pointsInYear_calcHelper = 0;
  AcademicDegree _academicDegree; // point to parent

  AcademicYear(this._academicYear) {
    _semesters = [];
    print('entered year constructor');
    Semester temp;
    for (int i = 0; i < kNUM_OF_SEMESTERS_PER_YEAR; i++) {
      temp = new Semester(i);
      temp.setMyYear(this); // back pointing
      print('finished setMyYear in year class');
      _semesters.add(temp);
    }
    print('finished year constructor');
  }

  void addNewSemester(Semester addMe) {
    _semesters.add(addMe);
  }

  void addNewCourse_toYear(Course addMe, int semesterNum_1to3) {
    _semesters[semesterNum_1to3].addNewCourse_toSemester(addMe);
    _calcHelper_numeratorForAvg += (addMe.getNumeratorConterbution());
    _pointsInYear_calcHelper += addMe.getPoints();
  }

  String getYearlyAverage() {
    _yearlyAverage = _calcHelper_numeratorForAvg / _pointsInYear_calcHelper;
    return _yearlyAverage.toStringAsFixed(2);
  }

  void setMyDegree(AcademicDegree theOwner) {
    _academicDegree = theOwner;
  }

  Semester getSemester(@required int semesterTaken_1to3) {
    return _semesters[semesterTaken_1to3];
  }

  UnmodifiableListView<Semester> getSemestersList(){
    return _semesters;
  }

  int getNumberOfCoursesInYear() {
    return _numOfCoursesInYear;
  }

  void deleteCourseFromYear(Course deleteMe) {
    _calcHelper_numeratorForAvg -= (deleteMe.getNumeratorConterbution());
    _pointsInYear_calcHelper -=
        deleteMe.getPoints(); // = to the denominator (keep for readability)
    _numOfCoursesInYear--;
    _academicDegree.deleteCourseFromDegree(deleteMe);
  }
}
