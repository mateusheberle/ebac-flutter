import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonStylePage extends StatefulWidget {
  const ButtonStylePage({super.key});

  @override
  State<ButtonStylePage> createState() => _ButtonStylePageState();
}

class _ButtonStylePageState extends State<ButtonStylePage> {
  @override
  Widget build(BuildContext context) {
    // kDebugMode: constante booleana que indica se o aplicativo está em modo de depuração
    if (kDebugMode) {
      debugPrint('debug');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ButtonStylePage'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            debugPrint('ebac');
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
          ),
          child: const Text('click'),
        ),
      ),
    );
  }
}
