### Widget: Text

- Problema Overflow
    - widget gigante que não cabe na tela

    - Row
        - não tem limite definido horizontalmente
    - Column
        - permite crescer ao infinito verticalmente

```dart
Container(
    color: Colors.amber, 
    width: 300, 
    height: 30,
    child: Text(
        'Mateus', 
        style: TextStyle(
            color: Colors.black,
            fontSize: 28,
        ),
        textAlign: TextAlign.center
    ),
),
```