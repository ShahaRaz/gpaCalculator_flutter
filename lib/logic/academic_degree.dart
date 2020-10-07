import 'academic_year_Class.dart';

class AcademicDegree {
  List<AcademicYear> academicYears;
  int yearBegan;
  double degAverage;

  // ignore: non_constant_identifier_names
  int calcHelper_numeratorForAvg;

  // ignore: non_constant_identifier_names
  int calcHelper_denominatorForAvg;

  AcademicDegree(this.academicYears, this.yearBegan, this.degAverage) {
    calcHelper_denominatorForAvg = 0;
    calcHelper_numeratorForAvg = 0;
  }

}
