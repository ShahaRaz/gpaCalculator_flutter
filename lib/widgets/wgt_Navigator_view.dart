import 'package:flutter/material.dart';
import 'package:gpa_israel/widgets/wgt_navigate_list.dart';
import 'package:gpa_israel/widgets/wgt_reusable_card.dart';
import 'package:gpa_israel/logic/academic_degree.dart';

class Widget_NavigatorView extends StatelessWidget {
  const Widget_NavigatorView(
      {@required this.academicDegree,
      @required this.yearID,
      @required this.dataRequired});

  final AcademicDegree academicDegree;
  final String yearID;
  final int dataRequired;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      child: ReusableCard(
        color1: Colors.white,
        cardChild: Widget_NavigationList(
          academicDegree: academicDegree,
          currentYear: int.parse(yearID),
          dataRequired: 1,
        ),
      ),
    );
  }
}
