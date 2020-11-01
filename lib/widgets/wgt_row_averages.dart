import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'package:gpa_israel/widgets/wgt_reusable_card.dart';
import 'wgt_circle_with_title.dart';
import 'package:gpa_israel/constant_views.dart';
import 'package:gpa_israel/widgets/wgt_navigate_list.dart';
import 'wgt_Navigator_view.dart';

// https://www.youtube.com/watch?v=kn0EOS-ZiIc&t=174s keys for statful [0,2:12]

class RowAverages extends StatelessWidget {
  String semesterAvg;
  String semesterID;
  String yearAvg;
  String yearID;
  String degreeAvg;
  String degreeID;
  final AcademicDegree academicDegree;

  RowAverages(
      {@required this.semesterAvg,
      @required this.yearAvg,
      @required this.degreeAvg,
      @required this.semesterID,
      @required this.yearID,
      @required this.degreeID,
      @required this.academicDegree});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleWithTitle(
              headLine: 'Term',
              inputText: semesterAvg,
              inputStyle: kTXTSTYLE_LBLUE30_BOLD,
              bottomLine: semesterID,
              myOnPress: () {
                /*    Widget_NavigationList(
                  _academicDegree: academicDegree,
                _currentYear: 1,
               _dataRequired: 1, // 1 - Term , 2 Year , 3 Degree TODO change me to enum

                ),*/
              },
            ),
            CircleWithTitle(
              headLine: 'Year',
              inputText: yearAvg,
              inputStyle: kTXTSTYLE_LBLUE30_BOLD,
              bottomLine: yearID,
            ),
            CircleWithTitle(
              headLine: 'Degree',
              inputText: degreeAvg,
              inputStyle: kTXTSTYLE_LBLUE30_BOLD,
              bottomLine: degreeID,
            ),
            SizedBox(height: 5),
          ],
        ),
        SizedBox(height: 10),
        Widget_NavigatorView(academicDegree: academicDegree, yearID: yearID),
      ]),
    );
  }
}
