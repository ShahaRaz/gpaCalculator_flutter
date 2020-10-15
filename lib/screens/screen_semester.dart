import 'package:flutter/material.dart';
import 'package:gpa_israel/screens/screen_add_course.dart';
import 'package:provider/provider.dart';
import 'package:gpa_israel/logic/manager.dart';
import 'package:gpa_israel/widgets/widget_semester.dart';
import 'package:gpa_israel/widgets/widget_course.dart';
import 'package:gpa_israel/logic/academic_semester.dart';

class SemesterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LogicManager>(

      // consumer vid 220, 15:00 flutter Udemy Angela
      builder: (context, degreeData, child) {
        return Scaffold(
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
                    top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.lightBlueAccent,
                      ),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'GPA  ${degreeData.getSemester(yearTaken_1to7: 1, semesterTaken_1to3: 1).getSemesterAverage()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      //'${Provider.of<LogicManager>(context).getCourseCount} Tasks',
                      '${degreeData.getSemester(yearTaken_1to7: 1, semesterTaken_1to3: 1).getNumberOfCoursesInSemester()} Courses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
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
}
