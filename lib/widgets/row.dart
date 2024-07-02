import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('App 004'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange,
            width: 50,
            height: 580,
          ),
          Container(
            color: Colors.blue,
            width: 50,
            height: 480,
          ),
          Container(
            color: Colors.yellow,
            width: 50,
            height: 380,
          ),
          Container(
            color: Colors.green,
            width: 50,
            height: 280,
          ),
        ],
      ),
    );
  }
}
