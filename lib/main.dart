import 'package:flutter/material.dart';

// import 'widgets/visibility.dart';
// import 'widgets/tooltip.dart';
// import 'widgets/box_decoration.dart';
// import 'widgets/row.dart';
// import 'widgets/list_view.dart';
// import 'widgets/list_view_separated.dart';
// import 'widgets/list_wheel_scroll_view.dart';
// import 'widgets/button_style.dart';
// import 'widgets/list_generate.dart';
import 'widgets/gesture_detector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
