import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String text = 'Mateus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page One'),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Center(
            child: Text(text),
          ),
          Hero(
            tag: 'btn1',
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                ),
              ),
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/pageTwo',
                    arguments: 'Auler') as String;
                setState(() {
                  text = result;
                });
              },
/* SizedBox: usado para definir um espaço vazio de tamanho fixo */
              child: const SizedBox(
                width: 200,
                height: 100,
                child: Center(
                  child: Text(
                    'Mateus Auler Heberle',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
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
