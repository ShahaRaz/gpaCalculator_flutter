import 'package:flutter/material.dart';
import 'package:gpa_israel/logic/academic_semester.dart';
import 'package:provider/provider.dart';
import 'package:gpa_israel/logic/manager.dart';

//
class AddCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _title;
    int _grade;
    double _points;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Title',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (courseText) {
                _title = courseText;
              },
            ),
            Text(
              'Grade',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (gradeText) {
                _grade = int.parse(gradeText);
              },
            ),
            Text(
              'Points',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (pointsText) {
                _points = double.parse(pointsText);
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<LogicManager>(context, listen: false)
                    .addCourse(_title, _grade, _points, 1, 1); // test
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
