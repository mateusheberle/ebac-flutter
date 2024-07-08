import 'dart:math';
import 'dart:collection';

import 'package:flutter/material.dart';

import 'widgets/box_decoration.dart';
import 'widgets/button_style.dart';
import 'widgets/gesture_detector.dart';
import 'widgets/ink_well.dart';
import 'widgets/list_generate.dart';
import 'widgets/list_view.dart';
import 'widgets/list_view_separated.dart';
import 'widgets/list_wheel_scroll_view.dart';
import 'widgets/my_custom_button.dart';
import 'widgets/offset.dart';
import 'widgets/on_pan_update.dart';
import 'widgets/row.dart';
import 'widgets/stack.dart';
import 'widgets/tooltip.dart';
import 'widgets/visibility.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Widget> itens = {
    'Box Decoration': const BoxDecorationPage(),
    'Button Style': const ButtonStylePage(),
    'Gesture Detector': const GestureDetectorPage(),
    'InkWell': const InkWellPage(),
    'List Generate': const ListGeneratePage(),
    'List View': const ListViewPage(),
    'List View Separated': const ListViewSeparatedPage(),
    'List Wheel Scrool View': const ListWheelScrollViewPage(),
    'MyCustomButton': const MyCustomButtonPage(),
    'Offset': const OffsetPage(),
    'OnPanUpdate': const OnPanUpdatePage(),
    'Row': const RowPage(),
    'Stack': const StackPage(),
    'Tooltip': const TooltipPage(),
    'Visibiliy': const VisibilityPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('EBAC Flutter'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          // var color =
          //     Colors.primaries[Random().nextInt(Colors.primaries.length)];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => itens.values.elementAt(index),
                ),
              );
            },
            child: Container(
              height: 100,
              color: Colors.green[100 * (index % 9)],
              child: Center(
                child: Text(
                  itens.keys.elementAt(index),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: itens.length,
      ),
    );
  }
}
