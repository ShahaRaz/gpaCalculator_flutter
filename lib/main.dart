import 'package:flutter/material.dart';
import 'logic/academic_semester.dart';
import 'screens/screen_semester.dart';
import 'logic/manager.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'logic/manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogicManager(),
      child: MaterialApp(
        home: homeScreen(), // the first screen that would run
      ),
    );
  }
}

class homeScreen extends StatelessWidget {
  LogicManager _logicManager;
  Semester _demoSemester;
  @override
  Widget build(BuildContext context) {
    buildDemoDegree();
    return SemesterScreen(_demoSemester);
  }

  void buildDemoDegree() {
    _logicManager = LogicManager();
    print('after logic manager');
    _demoSemester = _logicManager.getSemestersList(
        yearTaken_1to7: 1, semesterTaken_1to3: 1);
  }
}
