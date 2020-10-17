// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:gpa_israel/logic/academic_semester.dart';
// import 'package:gpa_israel/logic/manager.dart';
//
// class TasksList extends StatelessWidget {
//   Semester _semester;
//
//
//   TasksList(this._semester);
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<TaskData>(
//       builder: (context, taskData, child) {
//         return ListView.builder(
//           itemBuilder: (context, index) {
//             final task = taskData.tasks[index];
//             return TaskTile(
//               taskTitle: task.name,
//               isChecked: task.isDone,
//               checkboxCallback: (checkboxState) {
//                 taskData.updateTask(task);
//               },
//               longPressCallback: () {
//                 taskData.deleteTask(task);
//               },
//             );
//           },
//           itemCount: taskData.taskCount,
//         );
//       },
//     );
//   }
// }
