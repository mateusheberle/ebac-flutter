import 'dart:math';
import 'package:flutter/material.dart';

class GestureDetectorPageTwo extends StatefulWidget {
  const GestureDetectorPageTwo({super.key});

  @override
  State<GestureDetectorPageTwo> createState() => _GestureDetectorPageTwoState();
}

class _GestureDetectorPageTwoState extends State<GestureDetectorPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GestureDetectorPageTwo'),
        centerTitle: true,
      ),
      body: const Stack(
        children: [
          Gesture(
            text: 'Mateus',
            cor: Colors.green,
          ),
          Gesture(
            text: 'Auler',
            cor: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class Gesture extends StatefulWidget {
  final String text;
  final Color cor;

  const Gesture({
    super.key,
    required this.text,
    required this.cor,
  });

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  double cima = 0;
  double esquerda = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: cima,
      left: esquerda,
      child: GestureDetector(
        onPanUpdate: (details) {
          cima = max(0, cima + details.delta.dy);
          esquerda = max(0, esquerda + details.delta.dx);
          setState(() {});
        },
        child: Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            color: widget.cor.withOpacity(0.2),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 26, color: widget.cor),
            ),
          ),
        ),
      ),
    );
  }
}
