import 'package:gpa_israel/logic/constants.dart';

import 'academic_year_Class.dart';
import 'academic_course.dart';

class Semester {
  List<Course> _coursesInSemester;
  int _semesterENUM; //const -> SEMESTER_NAMES
  double _semesterAvg;
  // ignore: non_constant_identifier_names
  double _calcHelper_numeratorForAvg;
  // ignore: non_constant_identifier_names
  double _calcHelper_denominatorForAvg;

  AcademicYear _academicYear; // in which year was this semester

  Semester(this._semesterENUM) {
    _semesterAvg = 0;
    _calcHelper_numeratorForAvg = 0;
    _calcHelper_denominatorForAvg = 0;
  }

  void addNewCourse_toSemester(Course addMe) {
    _coursesInSemester.add(addMe);
    _calcHelper_numeratorForAvg += (addMe.getPoints() * addMe.getGrade());
    _calcHelper_denominatorForAvg += addMe.getPoints();
  }

  int getNumberOfCoursesInSemester() {
    return _coursesInSemester.length;
  }

  String getSemesterAverage() {
    _semesterAvg = _calcHelper_numeratorForAvg / _calcHelper_denominatorForAvg;
    return _semesterAvg.toStringAsFixed(2);
  }

  String getSemesterName() {
    return SEMESTER_NAMES[_semesterENUM]; //
  }

  void setMyYear(AcademicYear theOwner) {
    _academicYear = theOwner;
  }
}
