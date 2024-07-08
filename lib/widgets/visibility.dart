import 'package:flutter/material.dart';

class VisibilityPage extends StatefulWidget {
  const VisibilityPage({super.key});

  @override
  State<VisibilityPage> createState() => _VisibilityPageState();
}

class _VisibilityPageState extends State<VisibilityPage> {
  bool _showMyName = false;

  void _updateScreen() {
    _showMyName = !_showMyName;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('VisibilityPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              // método faz seu filho ser exibido ou não
              visible: _showMyName, // variável bool(true/false)
              child: Text(
                'MateusAuler',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateScreen,
        tooltip: 'Increment',
        child: const Icon(Icons.remove_red_eye_rounded),
      ),
    );
  }
}
