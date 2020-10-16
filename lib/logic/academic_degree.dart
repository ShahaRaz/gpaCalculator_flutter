import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'academic_year_Class.dart';
import 'academic_semester.dart';

class AcademicDegree {
  List<AcademicYear> _academicYears;
  int _yearBegan; // if starting in oct2020 -> the year counts as 2021
  int _totalYearsForDegree;
  double _degAverage;
  LogicManager myLogicManager;
  int _numOfCoursesInDegree = 0;
  double _pointsInDegree = 0;

  // ignore: non_constant_identifier_names
  double _pointsInDegree_calcHelper;
  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg;

  AcademicDegree(
      this._yearBegan, this._totalYearsForDegree, LogicManager myManager) {
    _academicYears = [];
    print('entered degree constructor');
    AcademicYear temp;
    for (int i = 1; i <= _totalYearsForDegree; i++) {
      temp = new AcademicYear(i);
      temp.setMyDegree(this);
      _academicYears.add(temp);
    }
    _pointsInDegree_calcHelper = 0;
    _calcHelper_numeratorForAvg = 0;
    _degAverage = 0;
    myLogicManager = myManager;
    print('finished degree constructor');
  }

  // ignore: non_constant_identifier_names
  void addNewCourse_toDegree(
      Course addMe, int yearTaken_1to7, int semesterTaken_1to3) {
    print('entered addNewCourse in Degree');
    if (yearTaken_1to7 > _totalYearsForDegree) {
      // all input rules should be checked in UI
      return;
    }
    print('passed if ');
    _academicYears[yearTaken_1to7]
        .addNewCourse_toYear(addMe, semesterTaken_1to3);
    _calcHelper_numeratorForAvg += (addMe.getNumeratorConterbution());
    _pointsInDegree_calcHelper += addMe.getPoints();
    _numOfCoursesInDegree++;
    _pointsInDegree = _pointsInDegree_calcHelper;
  }

  void addNewYear(AcademicYear addMe) {
    _academicYears.add(addMe);
  }

  String getDegAverage() {
    _degAverage = _calcHelper_numeratorForAvg / _pointsInDegree_calcHelper;
    return _degAverage.toStringAsFixed(2);
  }

  Semester getSemester(
      @required int yearTaken_1to7, @required int semesterTaken_1to3) {
    return _academicYears[yearTaken_1to7].getSemester(semesterTaken_1to3);
  }

  AcademicYear getAcademicYear({@required year_1to7}) {
    return _academicYears[year_1to7];
  }

  void deleteCourseFromDegree(Course deleteMe) {
    _calcHelper_numeratorForAvg -= (deleteMe.getNumeratorConterbution());
    _pointsInDegree_calcHelper -= deleteMe.getPoints();
    _numOfCoursesInDegree--;
    _pointsInDegree -= deleteMe.getPoints();
    myLogicManager.deleteCourseNUpdate(deleteMe);
  }

  UnmodifiableListView<AcademicYear> getYearsList(){
    return _academicYears;
  }

}
