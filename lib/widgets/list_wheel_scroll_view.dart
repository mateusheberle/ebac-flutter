import 'package:flutter/material.dart';

class ListWheelScrollViewPage extends StatefulWidget {
  const ListWheelScrollViewPage({super.key});

  @override
  State<ListWheelScrollViewPage> createState() =>
      _ListWheelScrollViewPageState();
}

class _ListWheelScrollViewPageState extends State<ListWheelScrollViewPage> {
  var itens = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
  ];

  FixedExtentScrollController controller = FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ListWheelScrollViewPage'),
        centerTitle: true,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
        // diameterRatio: .5,
        diameterRatio: 2,
        controller: controller,
        children: itens.map((item) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
