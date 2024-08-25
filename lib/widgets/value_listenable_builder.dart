import 'package:flutter/material.dart';

class ValueListenableBuilderPage extends StatefulWidget {
  const ValueListenableBuilderPage({super.key});

  @override
  State<ValueListenableBuilderPage> createState() =>
      _ValueListenableBuilderPageState();
}

class _ValueListenableBuilderPageState
    extends State<ValueListenableBuilderPage> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    debugPrint('Recriando ${_controller.counter.value}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ValueListenableBuilderPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: _controller.counter,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // sem parênteses
        onPressed: _controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Controller {
  var counter = ValueNotifier(0);

  void incrementCounter() {
    counter.value++;
  }
}
