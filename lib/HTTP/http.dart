import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'user_model.dart';

class HTTPPage extends StatefulWidget {
  const HTTPPage({super.key});

  @override
  State<HTTPPage> createState() => _HTTPPageState();
}

class _HTTPPageState extends State<HTTPPage> {
  String _objeto = '';

  void _atualizar() async {
    final result = await getUser();
    // debugPrint(result.toString());

    _objeto = result.toString();
    // final json = result.toJson();
    // debugPrint(json.toString());

    setState(() {});
  }

  Future<User> getUser() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/todos/2');
    var response = await http.get(url);
    final map = jsonDecode(response.body);
    final user = User.fromJson(map);
    return user;
    // final user = User.fromJson(jsonDecode((await http.get(Uri.https('jsonplaceholder.typicode.com', '/todos/1'))).body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('HTTP Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _objeto,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _atualizar,
        tooltip: 'Update',
        child: const Icon(Icons.update),
      ),
    );
  }
}
