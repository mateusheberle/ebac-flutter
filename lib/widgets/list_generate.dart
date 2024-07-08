import 'dart:math';

import 'package:flutter/material.dart';

class ListGeneratePage extends StatefulWidget {
  const ListGeneratePage({super.key});

  @override
  State<ListGeneratePage> createState() => _ListGeneratePageState();
}

class _ListGeneratePageState extends State<ListGeneratePage> {
  FixedExtentScrollController controller = FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ListGeneratePage'),
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
