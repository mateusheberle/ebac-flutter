# Navegação
    enviar informações para outra tela

    as telas do flutter quando abertas, são colocadas uma em cima da outra
    quando fechamos uma tela, o flutter remove da pilha

    > Navigator
    classe responsável pelas navegações

### push
    empurrar para a próxima tela
```dart
onPressed: () {
	Navigator.push(
		context,
		MaterialPageRoute(
			builder: (builder) => const MyHomePage(title: 'title'),
		),
	);
},
```

### pop
    sair da página atual e navegar para a anterior

```dart
onPressed: (){
	Navigator.pop(context);
}
```
    

## Rotas Nomeadas



### Adicionar rotas e configurações:

```dart
return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
	    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
	    useMaterial3: true,
    ),
    initialRoute: '/',
    routes: {
	    '/': (context) => const PageOne(),
	    '/myHomePage': (context) => const MyHomePage(),
    },
);
```
    parâmetros 'route' do widget MaterialApp()
    
    > initialRoute - rota que inicia
	
### Consumir uma rota nomeada:
	
```dart
Navigator.pushNamed(context, '/myHomePage');
```

- MaterialPageRoute
- CupertinoPageRoute

### Criação da classe:
```dart
class Arguments {
    final int id;
    final String name;

    Arguments({required this.id, required this.name});
}
```
	
### Enviar informações para outra tela

página A -> página B

```dart
// página A: quem envia argumentos:
Navigator.pushNamed(context, '/myHomePage', arguments: Arguments(id: 1, name: 'Mateus'));
```
```dart
// página B: pegar os argumentos e mostrar:
final argumentos = ModalRoute.of(context)!.settings.arguments as Arguments;
```

### Voltar com informações

página A <- página B

```dart
// página A: envio e fico esperando a volta dos argumentos
onPressed: () async {
	final result = await Navigator.pushNamed(context, '/myHomePage', arguments: Arguments(id: 1, name: 'Mateus'));
// result: trás o que voltar
    debugPrint('Resultado: ${result ?? 'Vazio'}');
},
```
```dart
// página B: página que vai voltar a informação, volta a informação com o .pop()
return WillPopScope(
    onWillPop: () async {
        if (argumentos.id > 10) {
            Navigator.pop(context, 'Hello World');
        } else {
            Navigator.pop(context, 'Hello World menor que 10');
        }
        return true;
    },
    child: Scaffold(
        appBar: AppBar(
                ...
```

    onWillPop: 
	    return true: permite voltar a tela
	    return false: não deixa usuário voltar a tela


### Hero

    > transições de uma tela para outra
    > tag: obrigatório, id para o Hero
    
    > FloatingActionButton já possui Hero, só usar a propriedade 'heroTag'

```dart
final result = await Navigator.push(
  context,
  PageRouteBuilder(
	transitionDuration: const Duration(milliseconds: 500),
	reverseTransitionDuration: const Duration(milliseconds: 500),
	pageBuilder: (_, __, ___) => const MyHomePage(),
	settings: RouteSettings(
	  arguments: Arguments(id: 1, name: 'Mateus'),
	),
  ),
);
// (_, __, ___): não querer usar parâmetros
```

    PageRouteBuilder: personalizar transição entre telas(rotas)
        transitionDuration: duração quando for
        reverseTransitionDuration: duração quando voltar
