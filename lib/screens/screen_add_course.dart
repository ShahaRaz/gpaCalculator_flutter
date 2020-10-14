import 'package:flutter/material.dart';
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
                Provider.of<LogicManager>(context)
                    .addCourse('Statistics', 89, 3, 2, 2); // test
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* child: Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                            'name'), //todo add TextStyle later on (as constant)
                        TextField(
                          autofocus: true,
                          onChanged: (nameText) {
                            _title = nameText;
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                            'grade'), //todo add TextStyle later on (as constant)
                        TextField(
                          onChanged: (gradeTexT) {
                            _grade = int.parse(gradeTexT);
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                            'Points'), //todo add TextStyle later on (as constant)
                        TextField(
                          onChanged: (pointsTexT) {
                            _points = double.parse(pointsTexT);
                          },
                        ),
                      ],
                    ),
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
                      print('yes');
                    },
                  )
                ]),*/
