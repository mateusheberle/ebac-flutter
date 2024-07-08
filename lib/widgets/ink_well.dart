import 'package:flutter/material.dart';

class InkWellPage extends StatefulWidget {
  const InkWellPage({super.key});

  @override
  State<InkWellPage> createState() => _InkWellPageState();
}

class _InkWellPageState extends State<InkWellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('InkWellPage'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
            child: InkWell(
              highlightColor: Colors.redAccent, // cor no 'onLongPress'
              onTap: () => print('teste'),
              onLongPress: () => print('teste2'),
              child: Container(
                color: Colors.green.withOpacity(0.1),
                child: const Text(
                  'Click',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
