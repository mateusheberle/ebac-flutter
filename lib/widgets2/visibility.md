## Visibility

```dart
if (_showMyName) {
  _showMyName = false;
} else {
  _showMyName = true;
}

_showMyName = !_showMyName;
```

### gerenciador de estado
    setState(() {});


`Theme.of(context).colorScheme.inversePrimary` definir cor de fundo

  - `Theme.of(context):` obter o tema usado no momento
  - `.colorScheme`: acessando o esquema de cores do tema
  - `.inversePrimary`: cor inversa ou alternativa da cor primária


`Visibility()`
método faz seu filho ser exibido ou não


### tooltip
    texto informativo/descrição/dica, 
    é exibido quando o usuário fica pressionando o widget por um tempo
    pode ser usado sendo um widget
