import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'academic_year_Class.dart';
import 'academic_semester.dart';

class AcademicDegree {
  List<AcademicYear> _academicYears;
  int _yearBegan; // if starting in oct2020 -> the year counts as 2021
  int _totalYearsForDegree;
  double _degAverage;
  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg;

  int _coursesInDegree = 0;
  double _pointsInDegree = 0;

  // ignore: non_constant_identifier_names
  double _calcHelper_denominatorForAvg;

  AcademicDegree(this._yearBegan, this._totalYearsForDegree) {
    _academicYears = [];
    print('entered degree constructor');
    AcademicYear temp;
    for (int i = 1; i <= _totalYearsForDegree; i++) {
      temp = new AcademicYear(i);
      temp.setMyDegree(this);
      _academicYears.add(temp);
    }
    _calcHelper_denominatorForAvg = 0;
    _calcHelper_numeratorForAvg = 0;
    _degAverage = 0;
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
    _calcHelper_numeratorForAvg += (addMe.getPoints() * addMe.getGrade());
    _calcHelper_denominatorForAvg += addMe.getPoints();
  }

  void addNewYear(AcademicYear addMe) {
    _academicYears.add(addMe);
  }

  String getDegAverage() {
    _degAverage = _calcHelper_numeratorForAvg / _calcHelper_denominatorForAvg;
    return _degAverage.toStringAsFixed(2);
  }

  Semester getSemester(
      @required int yearTaken_1to7, @required int semesterTaken_1to3) {
    return _academicYears[yearTaken_1to7].getSemester(semesterTaken_1to3);
  }

  void deleteCourseFromDegree(Course deleteMe) {
    _calcHelper_numeratorForAvg -= (deleteMe.getPoints() * deleteMe.getGrade());
    _calcHelper_denominatorForAvg -= deleteMe.getPoints();
    _coursesInDegree--;
    _pointsInDegree -= deleteMe.getPoints();
  }
}
