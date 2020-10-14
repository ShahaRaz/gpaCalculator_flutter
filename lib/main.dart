import 'package:flutter/material.dart';
import 'screens/screen_semester.dart';
import 'logic/manager.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: SemesterScreen(), // the first screen that would run
    );
  }
}
