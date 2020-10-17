import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_course.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'package:gpa_israel/logic/academic_year_Class.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'wgt_course.dart';
import 'wgt_navigation_data.dart';

class Widget_NavigationList extends StatelessWidget {
  final AcademicDegree academicDegree;
  final int dataRequired;
  final int currentYear;

  List<String> _dataList;

  Widget_NavigationList(
      {@required this.academicDegree,
      @required this.dataRequired,
      @required this.currentYear}) {
    getDataList(); // 1 - Term , 2 Year , 3 Degree TODO change me to enum
  }

  /*  Widget_NavigationList(
      this._logicManager, this._dataRequired, this._currentYear) {

    getDataList();
  }*/
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Widget_NavigationData(
          firstRow: (index + 1).toString(),
          secondRow: _dataList[index],
          myOnPress: () {
            print('$dataRequired 1 - Term , 2 Year , 3 Degree');
          },
        );
      },
      itemCount: _dataList.length,
    );
  }

  void getDataList() {
    // 1 - Term , 2 Year , 3 Degree TODO change me to enum
    _dataList = []; // init the list
    switch (dataRequired) {
      case 1:
        print('case 1');
        AcademicYear currentYear1 =
            academicDegree.getAcademicYear(year_1to7: currentYear);
        for (int i = 0; i <= 2; i++) { // over semesters in year
          // String valToAdd = currentYear1.getSemester(i).getSemesterAverage();
          String valToAdd = currentYear1.getSemester(i).getSemesterAverage();

          if (valToAdd != null) {
            print(valToAdd);
            _dataList.add(valToAdd);
          }
        }
        break;
      case 2:
        print('case 2');
        for (AcademicYear year in academicDegree.getYearsList()) {
          _dataList.add(year.getYearlyAverage());
        }
        break;
      case 3:
        print('case 3');
        _dataList.add(academicDegree.getDegAverage());
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
