import 'academic_degree.dart';
import 'academic_semester.dart';

class AcademicYear {
  List<Semester> semesters; // 1,2,3= summer
  int calendarYear; // if starting in oct2020 -> the year counts as 2021
  double yearlyAverage;
  int calcHelper_numeratorForAvg;
  int calcHelper_denominatorForAvg;
  AcademicDegree academicDegree; // point to parent
  AcademicYear(this.semesters, this.calendarYear, this.yearlyAverage);
}
