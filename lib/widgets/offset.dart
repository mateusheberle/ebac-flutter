import 'package:flutter/material.dart';

class OffsetPage extends StatefulWidget {
  const OffsetPage({super.key});

  @override
  State<OffsetPage> createState() => _OffsetPageState();
}

class _OffsetPageState extends State<OffsetPage> {
  Offset _position = const Offset(0.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffsetPage'),
      ),
      body: Center(
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _position += details.delta;
              print(_position);
            });
          },
          child: Transform.translate(
            offset: _position,
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Arraste-me!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
