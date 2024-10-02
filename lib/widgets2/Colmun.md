### Widget: Column
- coloca widget do lado do outro
- posição vertical
- alinhados verticalmente
- um embaixo do outro
- primeiro widget vai estar no topo
- coluna de cima pra baixo
- 'mainAxesAlignment'
    - eixo principal
        - vertical
- 'crossAxisAligment'
    - eixo secundário
        - horizontal    

```dart
Column(
    children: [
        Container(color: Colors.red, width: 100, height: 100,),
        Container(color: Colors.blue, width: 50, height: 50,),
    ],
)
```