import 'package:flutter/material.dart';
import '../model/task_handler.dart';
import '../widgets/status_icon.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
Widget build(BuildContext context) {

   var taskHandler = context.watch<TaskHandler>();
   var tasks = taskHandler.testTasks();

   return ListView(children: [
   for (final task in tasks) 
      ListTile(
         leading: StatusIcon(task),
         title: Text(task.title)),
 ]);
 }
}