# HTTP

Trabalhando só com o Flutter não é preciso alterar as permissões no 'AndroidManifest.xml'.


### post 
    enviar dados

### get 
    buscar dados

### [pub.dev](https://pub.dev/packages/http)

```sh
flutter pub add http
```

```dart
import 'package:http/http.dart' as http;
```


```dart
import 'package:http/http.dart' as http;
// http.nome_da_funcao_na_biblioteca

var url = Uri.https('example.com', 'whatsit/create');
var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});

print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
print(await http.read(Uri.https('example.com', 'foobar.txt')));
```

### [API de testes](jsonPlaceholder.typicode.com)

```dart
Future getUser() async {
	var url = Uri.https('jsonplaceholder.typicode.com', '/todos/1');
	var response = await http.get(url);

	print('Response status: ${response.statusCode}');
	print('Response body: ${response.body}');
}
```

### requisições http
    
    desserialização de dados
    > transformar json em formato de objeto
    
    serializar dados
    > enviar para o servidores

```dart
factory User.fromJson(Map json) {
	return User(
		id: json['id'],
		userId: json['userId'],
		title: json['title'],
		completed: json['completed'],
	);
}
```

```dart
Map toJson() {
    return {
        'id': id,
        'userId': userId,
        'title': title,
        'completed': completed,
    };
}
```