## InkWell

### ClipRRect: 
  Clip Rounded Rectangle
  recortar os cantos de um widget filho em formato arredondado

### Material
  base para quase todos os widgets do flutter
  com base no Material Design

### InkWell
  fornece uma área sensível ao toque que responde visualmente
  tornar os widgets interativos com feedback visual


```dart
child: ClipRRect(
  borderRadius: BorderRadius.circular(50),
  child: Material(
    child: InkWell(
      highlightColor: Colors.redAccent,
      onTap: () => print('teste'),
      onLongPress: () => print('teste2'),
      child: Container(
        color: Colors.green.withOpacity(0.1),
        child: const Text(
          'Click',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    ),
  ),
),
```