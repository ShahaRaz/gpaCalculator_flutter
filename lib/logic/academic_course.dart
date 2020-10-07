import 'academic_semester.dart';

class Course {
  int grade;
  String subject;
  int pointsForCourse; // weight (nekudot zhut)
  Semester semesterTaken; // semster will know in which year he blongs

  Course(this.grade, this.pointsForCourse, this.subject,
      this.semesterTaken); // 1,2,3=summer

  void setSemester(Semester parentSemester) {
    this.semesterTaken = parentSemester;
  }

  
}
//