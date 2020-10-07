import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/academic_year_Class.dart';

import 'academic_course.dart';

class logicManager {
  List<Course> semster1;
  List<Course> semster2;
  List<Course> semster3;
  List<AcademicYear> years;

  AcademicDegree testUser;

  logicManager() {
    print('entered manager');
    testStruct();
  }
  void testStruct() {
    testUser = AcademicDegree(2019, 4);

    semster1.add(new Course(80, 5, "Linear Algebra"));
    semster1.add(new Course(76, 5, "Calculus 1"));
    semster1.add(new Course(90, 5, "intro to programming JAVA"));
    semster1.add(new Course(80, 5, "Physics 1"));
    for (Course c in semster1) {
      testUser.addNewCourse_toDegree(c, 1, 1);
      print('inserted course to 1 ');
    }

    semster2.add(new Course(100, 3, "Object Oriented Programming"));
    semster2.add(new Course(90, 3, "Physics 2"));
    semster2.add(new Course(80, 5, "Calculus 2"));
    for (Course c in semster2) {
      testUser.addNewCourse_toDegree(c, 2, 1);
      print('inserted course to 2 ');
    }

    semster3.add(new Course(100, 3, "Design Object Oriented "));
    semster3.add(new Course(93, 3, "Database Management"));
    semster3.add(new Course(86, 5, "Discrete Math"));
    for (Course c in semster3) {
      testUser.addNewCourse_toDegree(c, 2, 1);
      print('inserted course to 3 ');
    }
  }
}
