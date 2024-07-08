import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('StackPage'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Material(
                child: InkWell(
                  highlightColor: Colors.redAccent,
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
        ],
      ),
    );
  }
}
