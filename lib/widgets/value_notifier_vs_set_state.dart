import 'package:flutter/material.dart';

class ValueNotifierVsSetStatePage extends StatefulWidget {
  const ValueNotifierVsSetStatePage({super.key});

  @override
  State<ValueNotifierVsSetStatePage> createState() =>
      _ValueNotifierVsSetStatePageState();
}

class _ValueNotifierVsSetStatePageState
    extends State<ValueNotifierVsSetStatePage> {
  final Controller _controller = Controller();

  void updateBySetState() {
    _controller.counter.value++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Recriando ${_controller.counter.value}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ValueNotifierVsSetStatePage'),
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
            Switch(
              value: _controller.isOn,
              onChanged: ((value) {
                _controller.setIsOn();
                setState(() {});
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // sem parênteses
        onPressed:
            _controller.isOn ? _controller.incrementCounter : updateBySetState,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
/*
switch no false usa setState
  atualiza toda a tela

switch no true usa valueNotivier
  atualiza somente o que mudou
  o que está dentro de 'ValueListenableBuilder'

*/

class Controller {
  var isOn = true;
  var counter = ValueNotifier(0);

  void incrementCounter() {
    counter.value++;
  }

  void setIsOn() {
    isOn = !isOn;
  }
}
