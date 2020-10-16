import 'package:flutter/material.dart';
import 'wgt_circle_with_title.dart';
import 'package:gpa_israel/constant_views.dart';

class RowAverages extends StatelessWidget {
  String semesterAvg;
  String yearAvg;
  String degreeAvg;

  RowAverages(
      {@required this.semesterAvg,
      @required this.yearAvg,
      @required this.degreeAvg});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleWithTitle(
            headLine: 'Term',
            inputText: semesterAvg,
            inputStyle: kTXTSTYLE_LBLUE30_BOLD),
        CircleWithTitle(
            headLine: 'Year',
            inputText: yearAvg,
            inputStyle: kTXTSTYLE_LBLUE30_BOLD),
        CircleWithTitle(
            headLine: 'Degree',
            inputText: degreeAvg,
            inputStyle: kTXTSTYLE_LBLUE30_BOLD),
      ],
    );
  }
}
