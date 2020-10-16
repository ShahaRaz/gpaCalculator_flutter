import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'package:gpa_israel/logic/academic_year_Class.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'wgt_course.dart';

class Widget_NavigationList extends StatelessWidget {
  final LogicManager _logicManager;
  final int _dataRequired;
  List<String> _dataList;
  final int _currentYear;

  Widget_NavigationList(
      this._logicManager, this._dataRequired, this._currentYear) {
    // 1 - Term , 2 Year , 3 Degree TODO change me to enum
  }
  @override
  Widget build(BuildContext context) {
    getDataList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return Widget_NavigationData();
          },
        );
      },
      itemCount: _dataList.length,
    );
  }

  void getDataList() {
    // 1 - Term , 2 Year , 3 Degree TODO change me to enum
    switch (_dataRequired) {
      case 1:
        AcademicYear currentYear1 =
            _logicManager.getAcademicYear(year_1to7: _currentYear);
        for (Semester sem in currentYear1.getSemestersList()) {
          _dataList.add(sem.getSemesterAverage());
        }
        break;
      case 2:
        AcademicDegree currentDegree1 = _logicManager.getDegree();
        for (AcademicYear year in currentDegree1.getYearsList()) {
          _dataList.add(year.getYearlyAverage());
        }
        break;
      case 3:
        AcademicDegree degree = _logicManager.getDegree();
        _dataList.add(degree.getDegAverage());
    }
  }
}

/*
class Widget_SemesterCoursesList extends StatelessWidget {
  final Semester semester;
  Widget_SemesterCoursesList(this.semester);

  @override
  Widget build(BuildContext context) {
    List<Course> courses = semester.getCoursesList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return Widget_Course(
          grade: courses[index].getGrade(),
          name: courses[index].getName(),
          points: courses[index].getPoints(),
          longPressFun: () {
            semester.deleteCourseFromSemester(courses[index]);
          },
        );
      },
      itemCount: courses.length,
    );
  }

}
*/
