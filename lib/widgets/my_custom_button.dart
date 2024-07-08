import 'package:flutter/material.dart';

class MyCustomButtonPage extends StatefulWidget {
  const MyCustomButtonPage({super.key});

  @override
  State<MyCustomButtonPage> createState() => _MyCustomButtonPageState();
}

class _MyCustomButtonPageState extends State<MyCustomButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MyCustomButtonPage'),
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
                  onTap: () => debugPrint('teste'),
                  onLongPress: () => debugPrint('teste2'),
                  child: const MyCustomButton(
                    text: 'Mateus',
                    textColor: Colors.green,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Material(
                child: InkWell(
                  highlightColor: Colors.redAccent,
                  onTap: () => debugPrint('teste'),
                  onLongPress: () => debugPrint('teste2'),
                  child: const MyCustomButton(
                    text: 'Auler',
                    textColor: Colors.blue,
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

class MyCustomButton extends StatelessWidget {
  final String text;
  final Color textColor;

  const MyCustomButton({
    super.key,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: textColor.withOpacity(0.1),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
