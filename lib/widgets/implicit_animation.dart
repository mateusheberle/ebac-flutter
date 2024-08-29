import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({super.key});

  @override
  State<ImplicitAnimationsPage> createState() => _ImplicitAnimationsPageState();
}

class _ImplicitAnimationsPageState extends State<ImplicitAnimationsPage> {
  var condicao = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        containerQuadrado(),
        mudancaDeIcone(),
        botao(),
      ],
    );
  }

  SafeArea containerQuadrado() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: AnimatedAlign(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.bounceOut,
          alignment: condicao ? Alignment.center : Alignment.topRight,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.bounceOut,
            width: condicao ? 300 : 100,
            height: condicao ? 300 : 100,
            decoration: BoxDecoration(
                color: condicao ? Colors.yellow : Colors.blueAccent,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.bounceOut,
                style: TextStyle(
                  fontSize: condicao ? 60 : 20,
                  color: condicao ? Colors.blueAccent : Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
                child: const Text(
                  'Mateus',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned mudancaDeIcone() {
    return Positioned(
      top: 100,
      left: 100,
      right: 100,
      child: Center(
        child: AnimatedCrossFade(
          firstChild: const Icon(
            Icons.access_time_filled_rounded,
            size: 100,
            color: Colors.yellow,
          ),
          secondChild: const Icon(
            Icons.access_alarms_rounded,
            size: 100,
            color: Colors.blueAccent,
          ),
          crossFadeState:
              condicao ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }

  AnimatedPositioned botao() {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.bounceOut,
      left: 50,
      right: 50,
      bottom: condicao ? 50 : 100,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: condicao
              ? WidgetStateProperty.all(Colors.yellow)
              : WidgetStateProperty.all(Colors.blueAccent),
        ),
        onPressed: () {
          setState(() {
            condicao = !condicao;
          });
        },
        child: Text(
          'Animar botão',
          style: TextStyle(color: condicao ? Colors.blueAccent : Colors.yellow),
        ),
      ),
    );
  }
}
