import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ListViewPage'),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(16),
        // reverse: true, // itens em ordem inversa
        itemExtent: 100,
        // physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Colors.orange,
            width: 400,
            height: 100,
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 100,
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            width: 200,
            height: 100,
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
