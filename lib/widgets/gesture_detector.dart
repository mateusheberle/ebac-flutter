import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('App 010'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => print('teste'),
          onLongPress: () => print('teste2'),
          // onHorizontalDragStart: (details) => print(details),
          child: Container(
            color: Colors.green,
            child: const Text(
              'Click',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
