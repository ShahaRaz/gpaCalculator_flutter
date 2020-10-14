import 'academic_semester.dart';

class Course {
  int _grade = 0;
  String _subject = '';
  double _pointsForCourse = 0; // weight (nekudot zhut)
  Semester _semesterTaken; // semster will know in which year he blongs
  double _calcHelper_numeratorForAvg = 0;
  Course(this._grade, this._pointsForCourse, this._subject) {
    _calcHelper_numeratorForAvg =
        _pointsForCourse * _grade; // instead of calculate again each level
  } // 1,2,3=summer

  void setSemester(Semester parentSemester) {
    this._semesterTaken = parentSemester;
  }

  void deleteTheCourse() {
    _semesterTaken.deleteCourseFromSemester(this);
  }

  int getGrade() {
    return this._grade;
  }

  double getPoints() {
    return this._pointsForCourse;
  }

  String getName() {
    return this._subject;
  }

  double getNumeratorConterbution() {
    return _calcHelper_numeratorForAvg;
  }
}
