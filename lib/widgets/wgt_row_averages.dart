import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_degree.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'package:gpa_israel/widgets/wgt_reusable_card.dart';
import 'wgt_circle_with_title.dart';
import 'package:gpa_israel/constant_views.dart';
import 'package:gpa_israel/widgets/wgt_navigate_list.dart';

class RowAverages extends StatefulWidget {
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
  _RowAveragesState createState() => _RowAveragesState(
      semesterAvg, yearAvg, degreeAvg, semesterID, yearID, degreeID);
}

//todo clean up the class and get rid of unnecessary
class _RowAveragesState extends State<RowAverages> {
  String semesterAvg;
  String semesterID;
  String yearAvg;
  String yearID;
  String degreeAvg;
  String degreeID;

  _RowAveragesState(this.semesterAvg, this.semesterID, this.yearAvg,
      this.yearID, this.degreeAvg, this.degreeID);

  @override
  void initState() {
    // called only once when widget created
    updateUI(
        widget.semesterAvg,
        widget.semesterID,
        widget.yearAvg,
        widget.semesterID,
        widget.degreeAvg,
        widget.degreeID,
        0 // data required 1-Semester / 2-Year / 3-Degree // 0-don't display
        );
    //call once
  }

  void updateUI(
      String semesterAvgNew,
      String semesterIDNew,
      String yearAvgNew,
      String yearIDNew,
      String degreeAvgNew,
      String degreeIDNew,
      int dataRequired) {
    this.semesterAvg = semesterAvgNew;
    this.semesterID = semesterIDNew;
    this.yearAvg = yearAvgNew;
    this.yearID = yearIDNew;
    this.degreeAvg = degreeAvgNew;
    this.degreeID = degreeIDNew;

    switch (dataRequired) {
      case 0:
        //TODO return a blank empty widget to go into the container
        break;
      case 1:
        break;
      //TODO return a widget with all semesters 1->3 & they're averages
      case 2:
        break;
      //TODO return a widget with all years 1->NumberOfYearsInDegree & they're averages

      case 3:
        break;
      //TODO return a widget with year began , user name & degree Name

      default:
        print(
            'error occurred, wgt_row_averages updateUI , dataRequired isn\'t in range [0,3]');
    }
  }

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
        Widget_NavigatorView(
            academicDegree: widget.academicDegree, yearID: yearID),
      ]),
    );
  }
}

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
