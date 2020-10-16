import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'package:gpa_israel/widgets/wgt_reusable_card.dart';
import 'wgt_circle_with_title.dart';
import 'package:gpa_israel/constant_views.dart';
import 'package:gpa_israel/widgets/wgt_navigate_list.dart';

class RowAverages extends StatelessWidget {
  final String semesterAvg;
  final String semesterID;
  final String yearAvg;
  final String yearID;
  final String degreeAvg;
  final String degreeID;
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
    return Column(children: [
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
      SizedBox(height: 5),
      ReusableCard(
        color1: Colors.lightBlue,
        cardChild: Widget_NavigationList(),
      ),
    ]);
  }
}
