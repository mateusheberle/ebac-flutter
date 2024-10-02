import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/task.dart';
import 'widgets/task_widget.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Task(""),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("My to-do list")),
        drawer: const Drawer(),
        body: const Center(
          child: TaskWidget(),
        ),
        floatingActionButton: Consumer<Task>(
          builder: (context, storedValue, child) {
            return FloatingActionButton(
              child: const Icon(Icons.change_circle_outlined),
              onPressed: () {
                storedValue.randomize();
                // print(storedValue.title);
              },
            );
          },
        ),
      ),
    );
  }
}
