import 'package:gpa_israel/logic/academic_course.dart';
import 'constants.dart';
import 'academic_degree.dart';
import 'academic_semester.dart';

class AcademicYear {
  List<Semester> _semesters; // 1,2,3= summer
  int _academicYear; // if starting in oct2020 -> the year counts as 2021
  double _yearlyAverage;
  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg;
  // ignore: non_constant_identifier_names
  double _calcHelper_denominatorForAvg;
  AcademicDegree _academicDegree; // point to parent

  AcademicYear(this._academicYear) {
    Semester temp;
    for (int i = 0; i < NUM_OF_SEMESTERS_PER_YEAR; i++) {
      temp = new Semester(i);
      temp.setMyYear(this); // back pointing
      _semesters.add(temp);
    }
  }

  void addNewSemester(Semester addMe) {
    _semesters.add(addMe);
  }

  void addNewCourse_toYear(Course addMe, int semesterNum_1to3) {
    _semesters[semesterNum_1to3].addNewCourse_toSemester(addMe);
    _calcHelper_numeratorForAvg += (addMe.getPoints() * addMe.getGrade());
    _calcHelper_denominatorForAvg += addMe.getPoints();
  }

  String getYearlyAverage() {
    _yearlyAverage =
        _calcHelper_numeratorForAvg / _calcHelper_denominatorForAvg;
    return _yearlyAverage.toStringAsFixed(2);
  }

  void setMyDegree(AcademicDegree theOwner) {
    _academicDegree = theOwner;
  }

}
