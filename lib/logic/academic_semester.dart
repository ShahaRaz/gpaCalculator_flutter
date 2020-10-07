import 'academic_year_Class.dart';
import 'academic_course.dart';

class Semester {
  List<Course> coursesInSemester;
  double averageScore;
  int year;
  // ignore: non_constant_identifier_names
  int calcHelper_numeratorForAvg;
  // ignore: non_constant_identifier_names
  int calcHelper_denominatorForAvg;
  AcademicYear academicYear; // in which year was this semester

  Semester(this.coursesInSemester, this.averageScore, this.year);
}
