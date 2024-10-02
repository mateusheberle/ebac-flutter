### Widget: ClipRRect
- para usar borda na Image
- usar o 'borderRadius: BorderRadius.circular(4),'

```dart
ClipRRect(
    borderRadius: BorderRadius.circular(4),
    child: Image.asset(
        widget.foto,
        height: 100,
        width: 72,
        fit: BoxFit.cover, // ajuda a ajustar a imagem
    ),
),
```