import 'academic_semester.dart';

class Course {
  int _grade = 0;
  String _subject = '';
  double _pointsForCourse = 0; // weight (nekudot zhut)
  Semester _semesterTaken; // semster will know in which year he blongs

  Course(this._grade, this._pointsForCourse, this._subject); // 1,2,3=summer

  void setSemester(Semester parentSemester) {
    this._semesterTaken = parentSemester;
  }

  void deleteTheCourse(){
    _semesterTaken.deleteTheCourse();
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
}
