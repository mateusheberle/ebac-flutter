## List

### ListWheelScrollView()
  cria uma lista deslocável que funciona de maneira semelhante a uma roda ou cilindro. 
  Os itens na lista são dispostos de tal forma que simulam uma perspectiva 3D.

### List<Widget>.generate()
  criar uma lista de widgets com base em uma lógica de geração

```dart
List<Widget> listaDeWidgets = List<Widget>.generate(
  quantidade_de_elementos,
  (index){
    return WidgetAqui(); - função que gera o widget
  }
)
```

### List.generate: criar lista com elementos gerados dinamicamente
  2 parâmetros: número de elementos & função que define como gerar cada elemento
