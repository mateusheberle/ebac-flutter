import 'dart:math';

import 'package:flutter/material.dart';

class OnPanUpdatePage extends StatefulWidget {
  const OnPanUpdatePage({super.key});

  @override
  State<OnPanUpdatePage> createState() => _OnPanUpdatePageState();
}

class _OnPanUpdatePageState extends State<OnPanUpdatePage> {
  double _top = 0;
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('OnPanUpdatePage'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              onTap: () {
                print('$_top / $_left'); // imprime no console a posição X e Y
              },
              onPanUpdate: (details) {
                _top = max(0, _top + details.delta.dy);
                _left = max(0, _left + details.delta.dx);

                print('$_top / $_left'); // imprime no console a posição X e Y
                setState(() {}); // atualiza a tela com a nova coordenada
              },
              child: Container(
                color: Colors.green.withOpacity(0.2),
                child: const Icon(
                  Icons.face,
                  color: Colors.green,
                  size: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
