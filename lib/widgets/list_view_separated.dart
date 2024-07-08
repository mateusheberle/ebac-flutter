import 'dart:math';

import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatefulWidget {
  const ListViewSeparatedPage({super.key});

  @override
  State<ListViewSeparatedPage> createState() => _ListViewSeparatedPageState();
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ListViewSeparatedPage'),
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
