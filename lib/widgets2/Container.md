# Widget: Container

- classe
- parâmetro
    - cor
    - tamanho
- não consegue usar um widget encima de outro
- child
    - filho diretamente relacionado com esse widget

```dart
Container(
    color: Colors.amber,
    width: 48.0,
    height: 48.0,
    child: Container(
        color: Colors.blue
    )
),
```