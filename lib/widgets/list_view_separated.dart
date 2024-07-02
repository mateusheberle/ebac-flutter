import 'dart:math';

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
        title: const Text('App 006'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var color =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];
          return Container(
            height: 100,
            color: color,
            child: Center(
              child: Text(
                index.toString(),
                // 'Item $index',
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
