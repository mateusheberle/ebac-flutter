import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('App 003'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0), // valor em pixels
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://ciclovivo.com.br/wp-content/uploads/2018/10/iStock-536613027-1024x683.jpg'), // Substitua pelo caminho da sua imagem
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle, // formato de circuferência
              // color: Colors.black,
              border: Border.all(
                color: Colors.orange,
                width: 6,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'Flutter EBAC',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
