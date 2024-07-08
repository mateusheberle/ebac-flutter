import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({super.key});

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GestureDetectorPage'),
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
