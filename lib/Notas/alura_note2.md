
[Documentação do Flutter](https://docs.flutter.dev/cookbook)
[TextInput](https://docs.flutter.dev/cookbook/forms/text-input)

### Diferença de TextField e TextFormField ?

TextFormField tem o 'validator'

'controller': pegar dado no campo


Colors.black12: black mais claro
Colors.white70: white mais escuro


ClipRRect(): borda de imagem

ctrl + alt + l: identar no AndroidStudio

Form(): widget pai de todos os TextFormField()
com ele podemos verificar todas as validações de uma vez

se retornar algum erro o Form() barra


    if (_formKey.currentState!.validate()): 
ver se tudo está validado
currentState: estado atual

## SnackBar

SnackBar(): widget do Scaffold()


SnackBar: preta bem embaixo
MaterialBanner: embaixo da AppBar

ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(),
);

ScaffoldMessenger.of(context).showMaterialBanner(
    MaterialBanner(),
);

## Navegação

    mudar de tela
    Navigator: widget
    route: as telas que serão navegadas

tipos de navegação:
- em aplicativos
    - pilha
    - caminho único
    - tela por tela
    - linear
    - navegação direta
- em websites
    - caminhos diretos
    - complexo
    - navegção 2.0

### rotas anônimas

```dart
Navigator.push(
    context, MaterialPageRoute(
        builder: (context) {
            return FormScreen();
        },
    ),
),
```
- coloca a tela encima da tela atual

```dart
Navigator.pop(context)
```
- estoura/explode
- volta pra tela de trás

### rotas nomeadas

```dart
MaterialApp(
    routes: {
        '/': (context) => InitialScreen(),
        '/form': (context) => FormScreen(),
    },
);
```
```dart
Navigator.pushNamed(context, '/form');
```

MaterialPageRoute: constroi uma nova tela com uma aniamçãozinha

passar informações entre widgets: entender o estado

Ephemeral State
- passageiro
- apenas um widget
- pai pra filho

App State
- multiplos widgets

Inherited Widget
- widget de herança
- guarda informações
- irmã do stateful e stateless
- 'inh' atalho para criar
- precisa ser pai de quem quer a informação

### contexto
- local que a informação se encontra

.of(context)
- 'dentroDo'

### ListView

em listas longas que o widget sai da tela
quando o item é reconstruido (quando o usuário voltar)
ele perde o estado
solução: variável 'nivel' na primeira classe do statefulWidget
a primeira classe do stateful não é reconstruida toda vez 












