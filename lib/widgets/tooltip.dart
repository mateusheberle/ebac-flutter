import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  const TooltipPage({super.key});

  @override
  State<TooltipPage> createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('TooltipPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Tooltip(
          // Tooltip: breve explicação sobre um widget, quando longo pressionado
          message: 'Texto do Tooltip',
          child: ElevatedButton(
            onPressed: () {
              // Ação ao pressionar o botão
            },
            child: const Text('Pressione-me'),
          ),
        ),
      ),
    );
  }
}
