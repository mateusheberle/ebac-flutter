import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FixedExtentScrollController controller = FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('App 009'),
        centerTitle: true,
      ),
      body: ListWheelScrollView(
        itemExtent: 50,
        diameterRatio: 1.5,
        controller: controller,
        children: List<Widget>.generate(100, (index) {
          return Card(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '$index',
                ),
                const Text(
                  'Mateus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
