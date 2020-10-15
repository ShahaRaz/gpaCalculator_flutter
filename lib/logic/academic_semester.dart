import 'package:gpa_israel/logic/constants.dart';

import 'academic_year_Class.dart';
import 'academic_course.dart';

class Semester {
  List<Course> coursesInSemester;
  int _semesterENUM; //const -> SEMESTER_NAMES
  double _semesterAvg;

  int _numOfCoursesInSemester = 0;
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
    _calcHelper_numeratorForAvg += (addMe.getNumeratorConterbution());
    _pointsInSemester_calcHelper += addMe.getPoints();
  }

  int getNumberOfCoursesInSemester() {
    return coursesInSemester.length;
  }

  String getSemesterAverage() {
    _semesterAvg = _calcHelper_numeratorForAvg / _pointsInSemester_calcHelper;
    return _semesterAvg.toStringAsFixed(2);
  }

  String getSemesterName() {
    return SEMESTER_NAMES[_semesterENUM]; //
  }

  void setMyYear(AcademicYear theOwner) {
    _academicYear = theOwner;
  }

  List<Course> getCoursesList() {
    return this.coursesInSemester;
  }

  void deleteCourseFromSemester(Course deleteMe) {
    print('_________++++++____________________________DELETECOURSE');
    print('enter deleteFromSemester, avg is: ${getSemesterAverage()}' );
    _calcHelper_numeratorForAvg -= (deleteMe.getNumeratorConterbution());
    _pointsInSemester_calcHelper -= deleteMe.getPoints();
    _numOfCoursesInSemester--; // now also availble with list.length (later maybe not) if we change structure
    coursesInSemester.remove(deleteMe);
    _academicYear.deleteCourseFromYear(deleteMe);
    print('finished deleteFromSemester, avg is: ${getSemesterAverage()}' );

  }
}
