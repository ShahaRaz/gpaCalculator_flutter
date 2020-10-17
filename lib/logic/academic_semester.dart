import 'package:gpa_israel/logic/constants_logic.dart';

import 'academic_year_Class.dart';
import 'academic_course.dart';

class Semester {
  List<Course> coursesInSemester;
  int _semesterENUM; //const -> SEMESTER_NAMES
  double _semesterAvg;

  int _numOfCoursesInSemester =
      0; // also available using courses.length (maybe later it wouldn't
  // (if adding also categories for courses)
  double _totalPointsInSemester = 0;
  AcademicYear _academicYear; // in which year was this semester

  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg;
  // ignore: non_constant_identifier_names
  double _pointsInSemester_calcHelper;

  Semester(this._semesterENUM) {
    coursesInSemester = [];
    _semesterAvg = 0;
    _calcHelper_numeratorForAvg = 0;
    _pointsInSemester_calcHelper = 0;
  }

  double getTotalPointsInSemster() {
    return _totalPointsInSemester;
  }

  void addNewCourse_toSemester(Course addMe) {
    coursesInSemester.add(addMe);
    _numOfCoursesInSemester++;
    _calcHelper_numeratorForAvg += (addMe.getNumeratorConterbution());
    _pointsInSemester_calcHelper += addMe.getPoints();
  }

  int getNumberOfCoursesInSemester() {
    return coursesInSemester.length;
  }

  String getSemesterAverage() {
    if (_pointsInSemester_calcHelper != 0) {
      _semesterAvg = _calcHelper_numeratorForAvg / _pointsInSemester_calcHelper;
      return _semesterAvg.toStringAsFixed(2);
    }
    return '0';
  }

  String getSemesterName() {
    return kSEMESTER_NAMES[_semesterENUM]; //
  }

  void setMyYear(AcademicYear theOwner) {
    _academicYear = theOwner;
  }

  List<Course> getCoursesList() {
    return this.coursesInSemester;
  }

  void deleteCourseFromSemester(Course deleteMe) {
    _calcHelper_numeratorForAvg -= (deleteMe.getNumeratorConterbution());
    _pointsInSemester_calcHelper -= deleteMe.getPoints();
    _numOfCoursesInSemester--; // now also availble with list.length (later maybe not) if we change structure
    coursesInSemester.remove(deleteMe);
    _academicYear.deleteCourseFromYear(deleteMe);
  }
}
