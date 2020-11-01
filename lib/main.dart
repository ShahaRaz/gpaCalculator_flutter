import 'package:flutter/material.dart';
import 'logic/academic_semester.dart';
import 'screens/screen_semester.dart';
import 'logic/manager.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'logic/manager.dart';


// TODO 17oct2020: fix the navigation to other semesters & years (FROM wgt_row_averages)
// design details in oneNote's flutter notebook
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
  @override
  Widget build(BuildContext context) {
    buildDemoDegree();
    return SemesterScreen();
  }

  void buildDemoDegree() {
    LogicManager _logicManager = LogicManager();
    print('after logic manager builder');
  }
}
