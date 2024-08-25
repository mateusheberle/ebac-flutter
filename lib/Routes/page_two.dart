import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  void _voltar() {
    Navigator.pop(context, 'Heberle 2');
  }

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 'Heberle 1');
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Page Two'),
        ),
        body: Center(
          child: Text(text),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'btn1',
          onPressed: _voltar,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
