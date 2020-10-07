import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'academic_year_Class.dart';

class AcademicDegree {
  List<AcademicYear> _academicYears;
  int _yearBegan; // if starting in oct2020 -> the year counts as 2021
  int _totalYearsForDegree;
  double _degAverage;
  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg;

  // ignore: non_constant_identifier_names
  double _calcHelper_denominatorForAvg;

  AcademicDegree(this._yearBegan,this._totalYearsForDegree) {
    //TODO create empty years & semesters using constructors
    AcademicYear temp;
    for(int i=1;i<=_totalYearsForDegree;i++){
      temp = new AcademicYear(i);
      temp.setMyDegree(this);
      _academicYears.add(temp);
    }
    _calcHelper_denominatorForAvg = 0;
    _calcHelper_numeratorForAvg = 0;
    _degAverage=0;
    
  }

  // ignore: non_constant_identifier_names
  void addNewCourse_toDegree(Course addMe, int yearTaken_1to7, int semesterTaken_1to3) {
    if(yearTaken_1to7>_totalYearsForDegree){
      //TODO manage if needed or take care by UserInterface
      return; 
    }
    _academicYears[yearTaken_1to7].addNewCourse_toYear(addMe, semesterTaken_1to3);
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
}
