import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('App 002'),
        centerTitle: true,
      ),
      body: Center(
        child: Tooltip(
          // Tooltip: breve explicação sobre um widget, quando longo pressionado
          message: 'Texto do Tooltip',
          child: ElevatedButton(
            onPressed: () {
              // Ação ao pressionar o botão
            },
            child: const Text('Pressione-me'),
          ),
        ),
      ),
    );
  }
}
