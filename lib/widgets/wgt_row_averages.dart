import 'package:flutter/material.dart';
import 'wgt_circle_with_title.dart';
import 'package:gpa_israel/constant_views.dart';

class RowAverages extends StatelessWidget {
  String semesterAvg;
  String semesterID;
  String yearAvg;
  String yearID;
  String degreeAvg;
  String degreeID;

  RowAverages(
      {@required this.semesterAvg,
      @required this.yearAvg,
      @required this.degreeAvg,
      @required this.semesterID,
      @required this.yearID,
      @required this.degreeID});

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
    ]);
  }
}
