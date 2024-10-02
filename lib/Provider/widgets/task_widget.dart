import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  // final Task task;
  // const TaskWidget(this.task, {super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Task>(builder: (context, storedValue, child) {
      return Card(child: Text(storedValue.title));
    });
  }
}
