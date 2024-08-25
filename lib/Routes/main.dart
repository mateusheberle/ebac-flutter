import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/pageTwo': (context) => const PageTwo(),
      },
    );
  }
}
/* 
-> clicar em 'Mateus Auler Heberle'
-> passa o argumento 'Auler' e abre a 'page_two.dart'
-> o argumento 'Auler' é mostrado no centro da tela
  -> se clicar no FAB (floating action button): passa o parâmetro 'Heberle 2', 
  fecha a 'page_two.dart' e retorna para a 'page_one.dart'
  -> se clicar na seta de voltar no AppBar: passa o parâmetro 'Heberle 1',
  fecha a 'page_two.dart' e retorna para a 'page_one.dart'
-> o argumento retornado ('Heberle 1' ou 'Heberle 2') é mostrado no centro da tela 
*/
