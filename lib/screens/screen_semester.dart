import 'package:flutter/material.dart';
import 'package:gpa_israel/screens/screen_add_course.dart';
import 'package:gpa_israel/widgets/wgt_circle_with_title.dart';
import 'package:provider/provider.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'package:gpa_israel/widgets/wgt_semester.dart';
import 'package:gpa_israel/constant_views.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:gpa_israel/widgets/wgt_row_averages.dart';

class SemesterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LogicManager>(
      // consumer vid 220, 15:00 flutter Udemy Angela
      builder: (context, degreeData, child) {
        return Scaffold(
          appBar: AppBar(
            title: AutoSizeText(degreeData.getDegree().getDegAverage()),
            backgroundColor: Colors.lightBlueAccent.shade200,
            leading: GestureDetector(
              onTap: () {/* Write listener code here */},
              child: Icon(
                Icons.menu, // add custom icons also
              ),
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.add),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SingleChildScrollView(
                            child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddCourseScreen(),
                        )));
              }),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 30.0, left: 20.0, right: 20.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RowAverages(
                      semesterAvg: degreeData
                          .getSemester(yearTaken_1to7: 1, semesterTaken_1to3: 1)
                          .getSemesterAverage(),
                      semesterID: '1',
                      yearAvg: degreeData
                          .getAcademicYear(year_1to7: 1)
                          .getYearlyAverage(),
                      yearID: '1',
                      degreeAvg: degreeData.getDegree().getDegAverage(),
                      degreeID: '1', // todo change to [deg shortName/user name]
                      academicDegree: degreeData.getDegree(),
                    ),
                    SizedBox(height: 30),
                    AutoSizeText(
                      '${degreeData.getSemester(yearTaken_1to7: 1, semesterTaken_1to3: 1).getNumberOfCoursesInSemester()} Courses',
                      minFontSize: 12,
                      maxFontSize: 20,
                      style: kTXTSTYLE_WHITE_SUBTEXT,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Widget_SemesterCoursesList(degreeData.getSemester(
                      yearTaken_1to7: 1, semesterTaken_1to3: 1)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String getLocationInDegree() {}
}
